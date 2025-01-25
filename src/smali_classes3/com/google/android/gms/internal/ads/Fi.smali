.class public final Lcom/google/android/gms/internal/ads/Fi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasm;
    .registers 60

    move-object/from16 v0, p1

    const-string v1, "interstitial_timeout"

    const-string v10, ""

    const/4 v15, 0x0

    :try_start_7
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v2, p2

    invoke-direct {v11, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_base_url"

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_url"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "ad_size"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "ad_slot_size"

    invoke-virtual {v11, v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v0, :cond_30

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzasi;->J0:I

    if-eqz v3, :cond_30

    const/16 v24, 0x1

    goto :goto_32

    :cond_30
    const/16 v24, 0x0

    :goto_32
    const-string v3, "ad_json"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_40

    const-string v3, "ad_html"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_40
    if-nez v3, :cond_48

    const-string v3, "body"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_48
    if-nez v3, :cond_56

    const-string v5, "ads"

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_56
    const-string v5, "debug_dialog"

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v5, "debug_signals"

    invoke-virtual {v11, v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_79

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v16, 0x408f400000000000L  # 1000.0

    mul-double v5, v5, v16

    double-to-long v5, v5

    move-wide/from16 v16, v5

    goto :goto_7b

    :cond_79
    move-wide/from16 v16, v8

    :goto_7b
    const-string v1, "orientation"

    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "portrait"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_93

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Vk;->Hw()I

    move-result v1

    goto :goto_a3

    :cond_93
    const-string v5, "landscape"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Vk;->FH()I

    move-result v1

    :goto_a3
    move/from16 v18, v1

    goto :goto_a8

    :cond_a6
    const/16 v18, -0x1

    :goto_a8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    const/4 v14, -0x1

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/Ai;->j6(Lcom/google/android/gms/internal/ads/zzasi;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ii;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/zi;)Lcom/google/android/gms/internal/ads/zzasm;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzasm;->FH:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzasm;->Ws:J

    move-wide/from16 v20, v4

    move-object v4, v3

    goto :goto_de

    :cond_d9
    const/4 v14, -0x1

    move-object v4, v3

    move-object v1, v12

    const-wide/16 v20, -0x1

    :goto_de
    move-object v3, v2

    if-nez v4, :cond_e7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object v0

    :cond_e7
    const-string v2, "click_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_f1

    move-object v5, v12

    goto :goto_f3

    :cond_f1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    :goto_f3
    if-eqz v2, :cond_fa

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :cond_fa
    const-string v2, "impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_104

    move-object v6, v12

    goto :goto_106

    :cond_104
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    :goto_106
    if-eqz v2, :cond_10d

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    :cond_10d
    const-string v2, "downloaded_impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_117

    move-object v7, v12

    goto :goto_119

    :cond_117
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    :goto_119
    if-eqz v2, :cond_122

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v48, v2

    goto :goto_124

    :cond_122
    move-object/from16 v48, v7

    :goto_124
    const-string v2, "manual_impression_urls"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v1, :cond_12e

    move-object v7, v12

    goto :goto_130

    :cond_12e
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    :goto_130
    if-eqz v2, :cond_139

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_13b

    :cond_139
    move-object/from16 v22, v7

    :goto_13b
    if-eqz v1, :cond_151

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    if-eq v2, v14, :cond_145

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    move/from16 v18, v2

    :cond_145
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    const-wide/16 v25, 0x0

    cmp-long v2, v7, v25

    if-lez v2, :cond_151

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    move-wide v7, v1

    goto :goto_153

    :cond_151
    move-wide/from16 v7, v16

    :goto_153
    const-string v1, "active_view"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v1, "ad_is_javascript"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v25

    if-eqz v25, :cond_16a

    const-string v1, "ad_passback_url"

    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    goto :goto_16c

    :cond_16a
    move-object/from16 v26, v12

    :goto_16c
    const-string v1, "mediation"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v1, "custom_render_allowed"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string v1, "content_url_opted_out"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v1, "content_vertical_opted_out"

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    const-string v1, "prefetch"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v1, "refresh_interval_milliseconds"

    move-object/from16 p0, v3

    const-wide/16 v2, -0x1

    invoke-virtual {v11, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v1, "mediation_config_cache_time_milliseconds"

    invoke-virtual {v11, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v30

    const-string v1, "gws_query_id"

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v1, "height"

    const-string v2, "fluid"

    invoke-virtual {v11, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    const-string v1, "native_express"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v34

    const-string v1, "video_start_urls"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v35

    const-string v1, "video_complete_urls"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v36

    const-string v1, "rewards"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawd;->j6(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/ads/zzawd;

    move-result-object v37

    const-string v1, "use_displayed_impression"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v38

    const-string v1, "auto_protection_configuration"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaso;->j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzaso;

    move-result-object v39

    const-string v1, "set_cookie"

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v1, "remote_ping_urls"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/Fi;->j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v44

    const-string v1, "safe_browsing"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawo;->j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object v45

    const-string v1, "render_in_browser"

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzasi;->sh:Z

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v46

    const-string v1, "custom_close_blocked"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v47

    const-string v1, "enable_omid"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v49

    const-string v1, "omid_settings"

    invoke-virtual {v11, v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    const-string v1, "disable_closable_area"

    invoke-virtual {v11, v1, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v51

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_236

    const-string v2, "is_analytics_logging_enabled"

    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_236

    const/16 v52, 0x1

    goto :goto_238

    :cond_236
    const/16 v52, 0x0

    :goto_238
    new-instance v53, Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzasi;->QX:Z

    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzasi;->SI:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzasi;->ca:Z

    const/16 v54, 0x0

    const-string v55, ""

    move-object/from16 v1, v53

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move v0, v10

    move-wide/from16 v10, v30

    move/from16 v56, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v13

    move/from16 v30, v14

    move-wide/from16 v13, v16

    move/from16 v15, v18

    move-object/from16 v16, v22

    move-wide/from16 v17, v20

    move/from16 v20, v25

    move-object/from16 v21, v26

    move-object/from16 v22, v23

    move/from16 v23, v27

    move/from16 v25, v30

    move/from16 v26, v28

    move/from16 v27, v29

    move-object/from16 v28, v32

    move/from16 v29, v33

    move/from16 v30, v34

    move-object/from16 v31, v37

    move-object/from16 v32, v35

    move-object/from16 v33, v36

    move/from16 v34, v38

    move-object/from16 v35, v39

    move/from16 v36, v56

    move-object/from16 v37, v41

    move-object/from16 v38, v44

    move/from16 v39, v46

    move-object/from16 v41, v45

    move/from16 v44, v0

    move/from16 v45, v47

    move/from16 v46, v54

    move/from16 v47, v49

    move/from16 v49, v51

    move-object/from16 v51, v55

    invoke-direct/range {v1 .. v52}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzasi;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/internal/ads/zzawd;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/internal/ads/zzaso;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;ZZZIZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_294
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_294} :catch_295

    return-object v53

    :catch_295
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Could not parse the inline ad response: "

    if-eqz v1, :cond_2ab

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b0

    :cond_2ab
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2b0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(I)V

    return-object v0
.end method

.method private static j6(Z)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p1, :cond_b

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    return-object p1
.end method

.method private static j6(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_19
    return-object v0
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yi;)Lorg/json/JSONObject;
    .registers 25

    move-object/from16 v1, p1

    const-string v2, "web_view_count"

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/yi;->u7:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/yi;->Hw:Landroid/location/Location;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/yi;->tp:Lcom/google/android/gms/internal/ads/Ji;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/yi;->j6:Landroid/os/Bundle;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/yi;->EQ:Lorg/json/JSONObject;

    :try_start_e
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sget-object v10, Lcom/google/android/gms/internal/ads/p;->fh:Lcom/google/android/gms/internal/ads/e;

    const-string v11, "extra_caps"

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yi;->FH:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_28} :catch_977

    const-string v11, ","

    if-lez v10, :cond_37

    :try_start_2c
    const-string v10, "eid"

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/yi;->FH:Ljava/util/List;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->DW:Landroid/os/Bundle;

    if-eqz v10, :cond_42

    const-string v10, "ad_pos"

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzasi;->DW:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zk;->j6()Ljava/lang/String;

    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "yyyyMMdd"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v12, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v13, v10, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    move-object/from16 v16, v9

    const-wide/16 v8, -0x1

    cmp-long v17, v13, v8

    if-eqz v17, :cond_6d

    new-instance v13, Ljava/util/Date;

    iget-wide v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->DW:J

    invoke-direct {v13, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v8, "cust_age"

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v16

    invoke-virtual {v12, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6f

    :cond_6d
    move-object/from16 v12, v16

    :goto_6f
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v8, :cond_7a

    const-string v8, "extras"

    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    invoke-virtual {v12, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8a

    const-string v8, "cust_gender"

    iget v13, v10, Lcom/google/android/gms/internal/ads/zzwb;->Hw:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    if-eqz v8, :cond_95

    const-string v8, "kw"

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzwb;->v5:Ljava/util/List;

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    if-eq v8, v9, :cond_a4

    const-string v8, "tag_for_child_directed_treatment"

    iget v13, v10, Lcom/google/android/gms/internal/ads/zzwb;->VH:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a4
    iget-boolean v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->Zo:Z

    const/4 v13, 0x1

    if-eqz v8, :cond_b2

    const-string v8, "test_request"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b2
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    const/4 v14, 0x2

    if-lt v8, v14, :cond_d3

    iget-boolean v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->gn:Z

    if-eqz v8, :cond_c4

    const-string v8, "d_imp_hdr"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d3

    const-string v8, "ppid"

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzwb;->u7:Ljava/lang/String;

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d3
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    const/4 v15, 0x3

    if-lt v8, v15, :cond_e3

    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    if-eqz v8, :cond_e3

    const-string v8, "url"

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzwb;->we:Ljava/lang/String;

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e3
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    const/4 v15, 0x5

    if-lt v8, v15, :cond_109

    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    if-eqz v8, :cond_f3

    const-string v8, "custom_targeting"

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzwb;->J8:Landroid/os/Bundle;

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f3
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    if-eqz v8, :cond_fe

    const-string v8, "category_exclusions"

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzwb;->Ws:Ljava/util/List;

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fe
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    if-eqz v8, :cond_109

    const-string v8, "request_agent"

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzwb;->QX:Ljava/lang/String;

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_109
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    const/4 v15, 0x6

    if-lt v8, v15, :cond_119

    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    if-eqz v8, :cond_119

    const-string v8, "request_pkg"

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzwb;->XL:Ljava/lang/String;

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_119
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    const/4 v15, 0x7

    if-lt v8, v15, :cond_129

    const-string v8, "is_designed_for_families"

    iget-boolean v15, v10, Lcom/google/android/gms/internal/ads/zzwb;->aM:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_129
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    const/16 v15, 0x8

    if-lt v8, v15, :cond_149

    iget v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->Mr:I

    if-eq v8, v9, :cond_13e

    const-string v8, "tag_for_under_age_of_consent"

    iget v15, v10, Lcom/google/android/gms/internal/ads/zzwb;->Mr:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13e
    iget-object v8, v10, Lcom/google/android/gms/internal/ads/zzwb;->U2:Ljava/lang/String;

    if-eqz v8, :cond_149

    const-string v8, "max_ad_content_rating"

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzwb;->U2:Ljava/lang/String;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_149
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;
    :try_end_14d
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_14d} :catch_977

    const-string v10, "height"

    const-string v15, "fluid"

    const-string v14, "format"

    if-nez v8, :cond_166

    :try_start_155
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {v12, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-eqz v8, :cond_19b

    invoke-virtual {v12, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19b

    :cond_166
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v13, v8
    :try_end_16b
    .catch Lorg/json/JSONException; {:try_start_155 .. :try_end_16b} :catch_977

    const/4 v9, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_170
    if-ge v9, v13, :cond_19b

    move/from16 v21, v13

    aget-object v13, v8, v9

    move-object/from16 v22, v8

    :try_start_178
    iget-boolean v8, v13, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-nez v8, :cond_185

    if-nez v19, :cond_185

    iget-object v8, v13, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    invoke-virtual {v12, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v19, 0x1

    :cond_185
    iget-boolean v8, v13, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-eqz v8, :cond_190

    if-nez v20, :cond_190

    invoke-virtual {v12, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v20, 0x1

    :cond_190
    if-eqz v19, :cond_194

    if-nez v20, :cond_19b

    :cond_194
    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v21

    move-object/from16 v8, v22

    goto :goto_170

    :cond_19b
    :goto_19b
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1a9

    const-string v8, "smart_w"

    const-string v9, "full"

    invoke-virtual {v12, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a9
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_1b7

    const-string v8, "smart_h"

    const-string v10, "auto"

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b7
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    if-eqz v8, :cond_22a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzwf;->VH:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v13, v10
    :try_end_1c7
    .catch Lorg/json/JSONException; {:try_start_178 .. :try_end_1c7} :catch_977

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1c9
    const-string v9, "|"

    if-ge v15, v13, :cond_212

    move/from16 v20, v13

    aget-object v13, v10, v15

    move-object/from16 v21, v10

    :try_start_1d3
    iget-boolean v10, v13, Lcom/google/android/gms/internal/ads/zzwf;->u7:Z

    if-eqz v10, :cond_1d9

    const/4 v14, 0x1

    goto :goto_20b

    :cond_1d9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_1e2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e2
    iget v9, v13, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1ef

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzwf;->Zo:I

    int-to-float v9, v9

    iget v10, v5, Lcom/google/android/gms/internal/ads/Ji;->Mr:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    goto :goto_1f1

    :cond_1ef
    iget v9, v13, Lcom/google/android/gms/internal/ads/zzwf;->v5:I

    :goto_1f1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_206

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzwf;->FH:I

    int-to-float v9, v9

    iget v10, v5, Lcom/google/android/gms/internal/ads/Ji;->Mr:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    goto :goto_208

    :cond_206
    iget v9, v13, Lcom/google/android/gms/internal/ads/zzwf;->DW:I

    :goto_208
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_20b
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v20

    move-object/from16 v10, v21

    goto :goto_1c9

    :cond_212
    if-eqz v14, :cond_225

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_21f

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_220

    :cond_21f
    const/4 v10, 0x0

    :goto_220
    const-string v9, "320x50"

    invoke-virtual {v8, v10, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_225
    const-string v9, "sz"

    invoke-virtual {v12, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22a
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->J0:I

    const/16 v9, 0x18

    if-eqz v8, :cond_2ae

    const-string v8, "native_version"

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->J0:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "native_templates"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->J8:Ljava/util/List;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;
    :try_end_244
    .catch Lorg/json/JSONException; {:try_start_1d3 .. :try_end_244} :catch_977

    const-string v10, "any"

    if-nez v8, :cond_249

    goto :goto_25b

    :cond_249
    :try_start_249
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzacp;->FH:I
    :try_end_24b
    .catch Lorg/json/JSONException; {:try_start_249 .. :try_end_24b} :catch_977

    if-eqz v8, :cond_25b

    const/4 v13, 0x1

    if-eq v8, v13, :cond_259

    const/4 v10, 0x2

    if-eq v8, v10, :cond_256

    const-string v10, "not_set"

    goto :goto_25b

    :cond_256
    const-string v10, "landscape"

    goto :goto_25b

    :cond_259
    const-string v10, "portrait"

    :cond_25b
    :goto_25b
    :try_start_25b
    const-string v8, "native_image_orientation"

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->er:Lcom/google/android/gms/internal/ads/zzacp;

    if-eqz v8, :cond_26a

    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/zzacp;->Hw:Z

    if-eqz v8, :cond_26a

    const/4 v8, 0x1

    goto :goto_26b

    :cond_26a
    const/4 v8, 0x0

    :goto_26b
    const-string v10, "native_multiple_images"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v12, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->yS:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_283

    const-string v8, "native_custom_templates"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->yS:Ljava/util/List;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_283
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    if-lt v8, v9, :cond_292

    const-string v8, "max_num_ads"

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->aj:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_292
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Qq:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_298
    .catch Lorg/json/JSONException; {:try_start_25b .. :try_end_298} :catch_977

    if-nez v8, :cond_2ae

    :try_start_29a
    new-instance v8, Lorg/json/JSONArray;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->Qq:Ljava/lang/String;

    invoke-direct {v8, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v10, "native_advanced_settings"

    invoke-virtual {v12, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a6
    .catch Lorg/json/JSONException; {:try_start_29a .. :try_end_2a6} :catch_2a7

    goto :goto_2ae

    :catch_2a7
    move-exception v0

    move-object v8, v0

    :try_start_2a9
    const-string v10, "Problem creating json from native advanced settings"

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2ae
    :goto_2ae
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->x9:Ljava/util/List;

    if-eqz v8, :cond_2ec

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->x9:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2ec

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->x9:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2c0
    :goto_2c0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2ec

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2de

    const-string v10, "iba"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :goto_2da
    invoke-virtual {v12, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c0

    :cond_2de
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_2c0

    const-string v10, "ina"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_2da

    :cond_2ec
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-boolean v8, v8, Lcom/google/android/gms/internal/ads/zzwf;->tp:Z

    if-eqz v8, :cond_2fc

    const-string v8, "ene"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2fc
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->ef:Lcom/google/android/gms/internal/ads/zzyv;

    if-eqz v8, :cond_317

    const-string v8, "is_icon_ad"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "icon_ad_expansion_behavior"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->ef:Lcom/google/android/gms/internal/ads/zzyv;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzyv;->j6:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_317
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->yO:Lcom/google/android/gms/internal/ads/zzafz;

    if-eqz v8, :cond_356

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->yO:Lcom/google/android/gms/internal/ads/zzafz;

    iget v10, v8, Lcom/google/android/gms/internal/ads/zzafz;->j6:I
    :try_end_31f
    .catch Lorg/json/JSONException; {:try_start_2a9 .. :try_end_31f} :catch_977

    const-string v13, "l"

    const/4 v14, 0x1

    if-eq v10, v14, :cond_347

    const/4 v14, 0x2

    if-eq v10, v14, :cond_345

    :try_start_327
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzafz;->j6:I

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v14, 0x34

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Instream ad video aspect ratio "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is wrong."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V
    :try_end_344
    .catch Lorg/json/JSONException; {:try_start_327 .. :try_end_344} :catch_977

    goto :goto_347

    :cond_345
    const-string v13, "p"

    :cond_347
    :goto_347
    :try_start_347
    const-string v8, "ia_var"

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "instr"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_356
    const-string v8, "slotname"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->v5:Ljava/lang/String;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "pn"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->Zo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_377

    const-string v8, "vc"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->VH:Landroid/content/pm/PackageInfo;

    iget v10, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_377
    const-string v8, "ms"

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yi;->VH:Ljava/lang/String;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "seq_num"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->u7:Ljava/lang/String;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "session_id"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->tp:Ljava/lang/String;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "js"

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v12, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzasi;->dx:Landroid/os/Bundle;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/yi;->DW:Landroid/os/Bundle;

    const-string v13, "am"

    iget v14, v5, Lcom/google/android/gms/internal/ads/Ji;->j6:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "cog"

    iget-boolean v14, v5, Lcom/google/android/gms/internal/ads/Ji;->DW:Z

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/Fi;->j6(Z)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "coh"

    iget-boolean v14, v5, Lcom/google/android/gms/internal/ads/Ji;->FH:Z

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/Fi;->j6(Z)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v5, Lcom/google/android/gms/internal/ads/Ji;->Hw:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3c9

    const-string v13, "carrier"

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/Ji;->Hw:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c9
    const-string v13, "gl"

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/Ji;->v5:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/Ji;->Zo:Z

    if-eqz v13, :cond_3de

    const-string v13, "simulator"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3de
    const-string v13, "is_latchsky"

    iget-boolean v14, v5, Lcom/google/android/gms/internal/ads/Ji;->VH:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/Ji;->gn:Z

    if-eqz v13, :cond_3f8

    const-string v13, "is_sidewinder"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f9

    :cond_3f8
    const/4 v14, 0x1

    :goto_3f9
    const-string v13, "ma"

    iget-boolean v15, v5, Lcom/google/android/gms/internal/ads/Ji;->u7:Z

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/Fi;->j6(Z)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "sp"

    iget-boolean v15, v5, Lcom/google/android/gms/internal/ads/Ji;->tp:Z

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/Fi;->j6(Z)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "hl"

    iget-object v15, v5, Lcom/google/android/gms/internal/ads/Ji;->EQ:Ljava/lang/String;

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v5, Lcom/google/android/gms/internal/ads/Ji;->we:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_425

    const-string v13, "mv"

    iget-object v15, v5, Lcom/google/android/gms/internal/ads/Ji;->we:Ljava/lang/String;

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_425
    const-string v13, "muv"

    iget v15, v5, Lcom/google/android/gms/internal/ads/Ji;->J8:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v13, v5, Lcom/google/android/gms/internal/ads/Ji;->Ws:I

    const/4 v15, -0x2

    if-eq v13, v15, :cond_440

    const-string v13, "cnt"

    iget v15, v5, Lcom/google/android/gms/internal/ads/Ji;->Ws:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_440
    const-string v13, "gnt"

    iget v15, v5, Lcom/google/android/gms/internal/ads/Ji;->QX:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "pt"

    iget v15, v5, Lcom/google/android/gms/internal/ads/Ji;->XL:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "rm"

    iget v15, v5, Lcom/google/android/gms/internal/ads/Ji;->aM:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "riv"

    iget v15, v5, Lcom/google/android/gms/internal/ads/Ji;->j3:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v15, "build_build"

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/Ji;->gW:Ljava/lang/String;

    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "build_device"

    iget-object v15, v5, Lcom/google/android/gms/internal/ads/Ji;->BT:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "is_charging"

    iget-boolean v9, v5, Lcom/google/android/gms/internal/ads/Ji;->rN:Z

    invoke-virtual {v14, v15, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v9, "battery_level"

    move-object v15, v6

    move-object/from16 v20, v7

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/Ji;->lg:D

    invoke-virtual {v14, v9, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v6, "battery"

    invoke-virtual {v13, v6, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "active_network_state"

    iget v9, v5, Lcom/google/android/gms/internal/ads/Ji;->yS:I

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "active_network_metered"

    iget-boolean v9, v5, Lcom/google/android/gms/internal/ads/Ji;->er:Z

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "network"

    invoke-virtual {v13, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "is_browser_custom_tabs_capable"

    iget-boolean v9, v5, Lcom/google/android/gms/internal/ads/Ji;->vy:Z

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "browser"

    invoke-virtual {v13, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v8, :cond_57a

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "runtime_free"

    const-string v9, "runtime_free_memory"

    move-object/from16 v21, v15

    const-wide/16 v14, -0x1

    invoke-virtual {v8, v9, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "runtime_max"

    const-string v9, "runtime_max_memory"

    invoke-virtual {v8, v9, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "runtime_total"

    const-string v9, "runtime_total_memory"

    invoke-virtual {v8, v9, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v8, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug_memory_info"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Debug$MemoryInfo;

    if-eqz v2, :cond_574

    const-string v8, "debug_info_dalvik_private_dirty"

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_info_dalvik_pss"

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_info_dalvik_shared_dirty"

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_info_native_private_dirty"

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_info_native_pss"

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_info_native_shared_dirty"

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_info_other_private_dirty"

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_info_other_pss"

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "debug_info_other_shared_dirty"

    iget v2, v2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_574
    const-string v2, "android_mem_info"

    invoke-virtual {v13, v2, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_57d

    :cond_57a
    move-object/from16 v21, v15

    const/4 v7, 0x0

    :goto_57d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "parental_controls"

    invoke-virtual {v2, v6, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/Ji;->J0:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_596

    const-string v6, "package_version"

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/Ji;->J0:Ljava/lang/String;

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_596
    const-string v6, "play_store"

    invoke-virtual {v13, v6, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "device"

    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "doritos"

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/yi;->v5:Ljava/lang/String;

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "doritos_v2"

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/yi;->Zo:Ljava/lang/String;

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/google/android/gms/internal/ads/p;->Cz:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_601

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/yi;->gn:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v6, :cond_5d6

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/yi;->gn:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/yi;->gn:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v8}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v10

    goto :goto_5d8

    :cond_5d6
    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_5d8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5f0

    const-string v8, "rdid"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "is_lat"

    invoke-virtual {v2, v6, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "idtype"

    const-string v8, "adid"

    :goto_5ec
    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_601

    :cond_5f0
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    const-string v6, "pdid"

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "pdidtype"

    const-string v8, "ssaid"

    goto :goto_5ec

    :cond_601
    :goto_601
    const-string v6, "pii"

    invoke-virtual {v12, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v12, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "submodel"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_61a

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/Fi;->j6(Ljava/util/HashMap;Landroid/location/Location;)V

    goto :goto_62e

    :cond_61a
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzwb;->j6:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_62e

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    if-eqz v2, :cond_62e

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwb;->EQ:Landroid/location/Location;

    invoke-static {v12, v2}, Lcom/google/android/gms/internal/ads/Fi;->j6(Ljava/util/HashMap;Landroid/location/Location;)V

    :cond_62e
    :goto_62e
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_63a

    const-string v2, "quality_signals"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->we:Landroid/os/Bundle;

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63a
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_64e

    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->QX:Z

    if-eqz v2, :cond_64e

    const-string v2, "forceHttps"

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->QX:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64e
    if-eqz v21, :cond_657

    const-string v2, "content_info"

    move-object/from16 v4, v21

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_657
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I
    :try_end_659
    .catch Lorg/json/JSONException; {:try_start_347 .. :try_end_659} :catch_977

    const-string v4, "u_sd"

    const/4 v6, 0x5

    if-lt v2, v6, :cond_67e

    :try_start_65e
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j3:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->aM:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->XL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_67a
    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_69b

    :cond_67e
    iget v2, v5, Lcom/google/android/gms/internal/ads/Ji;->Mr:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sh"

    iget v4, v5, Lcom/google/android/gms/internal/ads/Ji;->a8:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sw"

    iget v4, v5, Lcom/google/android/gms/internal/ads/Ji;->U2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_67a

    :goto_69b
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_6c7

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->Mr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_6a6
    .catch Lorg/json/JSONException; {:try_start_65e .. :try_end_6a6} :catch_977

    if-nez v2, :cond_6bc

    :try_start_6a8
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->Mr:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "view_hierarchy"

    invoke-virtual {v12, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b4
    .catch Lorg/json/JSONException; {:try_start_6a8 .. :try_end_6b4} :catch_6b5

    goto :goto_6bc

    :catch_6b5
    move-exception v0

    move-object v2, v0

    :try_start_6b7
    const-string v4, "Problem serializing view hierarchy to JSON"

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6bc
    :goto_6bc
    const-string v2, "correlation_id"

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->U2:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c7
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/4 v4, 0x7

    if-lt v2, v4, :cond_6d3

    const-string v2, "request_id"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->a8:Ljava/lang/String;

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d3
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v4, 0xc

    if-lt v2, v4, :cond_6e8

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->BT:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e8

    const-string v2, "anchor"

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->BT:Ljava/lang/String;

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e8
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v4, 0xd

    if-lt v2, v4, :cond_6f9

    const-string v2, "android_app_volume"

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->vy:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f9
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_70a

    const-string v2, "android_app_muted"

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzasi;->ro:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v12, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_70a
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_71f

    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->P8:I

    if-lez v2, :cond_71f

    const-string v2, "target_api"

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzasi;->P8:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71f
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v5, 0xf

    if-lt v2, v5, :cond_737

    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->ei:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_72c

    const/4 v9, -0x1

    goto :goto_72e

    :cond_72c
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzasi;->ei:I

    :goto_72e
    const-string v2, "scroll_index"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_737
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v5, 0x10

    if-lt v2, v5, :cond_748

    const-string v2, "_activity_context"

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzasi;->nw:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v12, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_748
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    if-lt v2, v4, :cond_773

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->cn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_752
    .catch Lorg/json/JSONException; {:try_start_6b7 .. :try_end_752} :catch_977

    if-nez v2, :cond_768

    :try_start_754
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzasi;->cn:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "app_settings"

    invoke-virtual {v12, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_760
    .catch Lorg/json/JSONException; {:try_start_754 .. :try_end_760} :catch_761

    goto :goto_768

    :catch_761
    move-exception v0

    move-object v2, v0

    :try_start_763
    const-string v5, "Problem creating json from app settings"

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_768
    :goto_768
    const-string v2, "render_in_browser"

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzasi;->sh:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v12, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_773
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    if-lt v2, v4, :cond_782

    const-string v2, "android_num_video_cache_tasks"

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->cb:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_782
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->EQ:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/zzasi;->lp:Z

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/yi;->we:Z

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzasi;->br:Z

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "cl"

    const-string v10, "221522000"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "rapid_rc"

    const-string v10, "dev"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "rapid_rollup"

    const-string v10, "HEAD"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "build_meta"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v8, Lcom/google/android/gms/internal/ads/p;->HT:Lcom/google/android/gms/internal/ads/e;

    const-string v9, "mf"

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "instant_app"

    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "lite"

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbbi;->v5:Z

    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "local_service"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_privileged_process"

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "container_version"

    const v2, 0xbdfcc1

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "sdk_env"

    invoke-virtual {v12, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cache_state"

    move-object/from16 v2, v20

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_7fe

    const-string v1, "gct"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->sG:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7fe
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_80f

    iget-boolean v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->Sf:Z

    if-eqz v1, :cond_80f

    const-string v1, "de"

    const-string v2, "1"

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80f
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->Nh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_853

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    const-string v2, "interstitial_mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_838

    const-string v2, "reward_mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_836

    goto :goto_838

    :cond_836
    const/4 v10, 0x0

    goto :goto_839

    :cond_838
    :goto_838
    const/4 v10, 0x1

    :goto_839
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->vJ:Landroid/os/Bundle;

    if-eqz v1, :cond_83f

    const/4 v13, 0x1

    goto :goto_840

    :cond_83f
    const/4 v13, 0x0

    :goto_840
    if-eqz v10, :cond_853

    if-eqz v13, :cond_853

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "interstitial_pool"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "counters"

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_853
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->g3:Ljava/lang/String;

    if-eqz v1, :cond_85e

    const-string v1, "gmp_app_id"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->g3:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85e
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->Mz:Ljava/lang/String;

    if-eqz v1, :cond_884

    const-string v1, "TIME_OUT"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->Mz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87c

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->k2:Lcom/google/android/gms/internal/ads/e;

    const-string v2, "sai_timeout"

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_889

    :cond_87c
    const-string v1, "fbs_aiid"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->Mz:Ljava/lang/String;

    :goto_880
    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_889

    :cond_884
    const-string v1, "fbs_aiid"

    const-string v2, ""

    goto :goto_880

    :goto_889
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->I:Ljava/lang/String;

    if-eqz v1, :cond_894

    const-string v1, "fbs_aeid"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->I:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_894
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->XG:Ljava/lang/String;

    if-eqz v1, :cond_89f

    const-string v1, "apm_id_origin"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->XG:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89f
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->j6:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_8b0

    const-string v1, "disable_ml"

    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->OW:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b0
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->ef:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8f6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8f6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->Sf:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v2, v4, :cond_8f6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1
    :try_end_8e2
    .catch Lorg/json/JSONException; {:try_start_763 .. :try_end_8e2} :catch_977

    const/4 v13, 0x0

    :goto_8e3
    if-ge v13, v4, :cond_8f1

    aget-object v5, v1, v13

    :try_start_8e7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Xl;->j6(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_8e3

    :cond_8f1
    const-string v1, "video_decoders"

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f6
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->w2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_917

    const-string v1, "omid_v"

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->a8()Lcom/google/android/gms/internal/ads/bg;

    move-result-object v2

    move-object/from16 v4, p0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/bg;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_917
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->XX:Ljava/util/ArrayList;

    if-eqz v1, :cond_92a

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->XX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_92a

    const-string v1, "android_permissions"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->XX:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_92a
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->kQ:Ljava/lang/String;

    if-eqz v1, :cond_935

    const-string v1, "consent_string"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->kQ:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_935
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzasi;->kQ:Ljava/lang/String;

    if-eqz v1, :cond_940

    const-string v1, "iab_consent_info"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzasi;->jJ:Landroid/os/Bundle;

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_940
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_96e

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_964

    const-string v2, "Ad Request JSON: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_96b

    :cond_964
    new-instance v1, Ljava/lang/String;

    const-string v2, "Ad Request JSON: "

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_96b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_96e
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_976
    .catch Lorg/json/JSONException; {:try_start_8e7 .. :try_end_976} :catch_977

    return-object v1

    :catch_977
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Problem serializing ad request to JSON: "

    if-eqz v2, :cond_98e

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_993

    :cond_98e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_993
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/zzasm;)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->FH:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v2, "ad_base_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->J8:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v2, "ad_size"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    const-string v1, "native"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->U2:Z

    if-eqz v1, :cond_25

    const-string v1, "ad_json"

    goto :goto_27

    :cond_25
    const-string v1, "ad_html"

    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->QX:Ljava/lang/String;

    if-eqz v1, :cond_35

    const-string v2, "debug_dialog"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->ef:Ljava/lang/String;

    if-eqz v1, :cond_3e

    const-string v2, "debug_signals"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->gn:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_58

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v5, 0x408f400000000000L  # 1000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    const-string v5, "interstitial_timeout"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_58
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Vk;->Hw()I

    move-result v2

    const-string v5, "orientation"

    if-ne v1, v2, :cond_6c

    const-string v1, "portrait"

    :goto_68
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7b

    :cond_6c
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->J0:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Vk;->FH()I

    move-result v2

    if-ne v1, v2, :cond_7b

    const-string v1, "landscape"

    goto :goto_68

    :cond_7b
    :goto_7b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->v5:Ljava/util/List;

    if-eqz v1, :cond_88

    const-string v2, "click_urls"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Fi;->j6(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->VH:Ljava/util/List;

    if-eqz v1, :cond_95

    const-string v2, "impression_urls"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Fi;->j6(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_95
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->x9:Ljava/util/List;

    if-eqz v1, :cond_a2

    const-string v2, "downloaded_impression_urls"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Fi;->j6(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->EQ:Ljava/util/List;

    if-eqz v1, :cond_af

    const-string v2, "manual_impression_urls"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Fi;->j6(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_af
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->j3:Ljava/lang/String;

    if-eqz v1, :cond_b8

    const-string v2, "active_view"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b8
    const-string v1, "ad_is_javascript"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->XL:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->aM:Ljava/lang/String;

    if-eqz v1, :cond_c8

    const-string v2, "ad_passback_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c8
    const-string v1, "mediation"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->u7:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "custom_render_allowed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->Mr:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->lg:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "content_vertical_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->Sf:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "prefetch"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->rN:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->we:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f6

    const-string v5, "refresh_interval_milliseconds"

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_f6
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->tp:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_101

    const-string v3, "mediation_config_cache_time_milliseconds"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_101
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->gW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_110

    const-string v1, "gws_query_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->gW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_110
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->BT:Z

    if-eqz v1, :cond_117

    const-string v1, "height"

    goto :goto_119

    :cond_117
    const-string v1, ""

    :goto_119
    const-string v2, "fluid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "native_express"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->vy:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->ei:Ljava/util/List;

    if-eqz v1, :cond_132

    const-string v2, "video_start_urls"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Fi;->j6(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_132
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->nw:Ljava/util/List;

    if-eqz v1, :cond_13f

    const-string v2, "video_complete_urls"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Fi;->j6(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->P8:Lcom/google/android/gms/internal/ads/zzawd;

    if-eqz v1, :cond_163

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "rb_type"

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzawd;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rb_amount"

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzawd;->DW:I

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "rewards"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_163
    const-string v1, "use_displayed_impression"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->SI:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "auto_protection_configuration"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "render_in_browser"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->cb:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "disable_closable_area"

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzasm;->Qq:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static j6(Ljava/util/HashMap;Landroid/location/Location;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x416312d000000000L  # 1.0E7

    mul-double v4, v4, v6

    double-to-long v4, v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    mul-double v8, v8, v6

    double-to-long v6, v8

    const/high16 p1, 0x447a0000  # 1000.0f

    mul-float v1, v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "radius"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lat"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "long"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "uule"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
