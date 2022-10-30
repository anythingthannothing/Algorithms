const mostPopularCreator = function (creators, ids, views) {
  const map = {};

  for (let i = 0; i < ids.length; i++) {
    if (map[creators[i]]) {
      let { popularity, maxPopularity, mostViewed } = map[creators[i]];

      if (views[i] > maxPopularity) {
        maxPopularity = views[i];
        mostViewed = ids[i];
      } else if (views[i] === maxPopularity) {
        mostViewed = ids[i] < mostViewed ? ids[i] : mostViewed;
      }

      map[creators[i]] = {
        popularity: popularity + views[i],
        maxPopularity,
        mostViewed,
      };
    } else {
      map[creators[i]] = {
        popularity: views[i],
        maxPopularity: views[i],
        mostViewed: ids[i],
      };
    }
  }

  let maxP = 0;

  Object.keys(map).forEach((e) => {
    if (map[e].popularity > maxP) {
      maxP = map[e].popularity;
    }
  });

  const ans = [];

  Object.keys(map).forEach((e) => {
    if (map[e].popularity === maxP) {
      ans.push([e, map[e].mostViewed]);
    }
  });

  return ans;
};
