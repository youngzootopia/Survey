json.extract! clist, :id, :CID, :Category, :ProgramName, :EpisodeNum, :VideoURL, :VideoFileName, :VideoThumb, :FPS, :RegisterDateTime, :LastSavedDateTime, :TagStatus, :User, :ProgramNameKor, :created_at, :updated_at
json.url clist_url(clist, format: :json)