.class Labcd/cA;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/oA;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DW(Lorg/json/JSONObject;)Labcd/Wz;
    .registers 10

    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "reports_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ndk_reports_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "update_required"

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "hash"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->v5(Lorg/json/JSONObject;)Labcd/Uz;

    move-result-object v7

    :goto_0
    new-instance v0, Labcd/Wz;

    invoke-direct/range {v0 .. v7}, Labcd/Wz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLabcd/Uz;)V

    return-object v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private FH(Lorg/json/JSONObject;)Labcd/Yz;
    .registers 6

    new-instance v0, Labcd/Yz;

    const-string v1, "update_endpoint"

    sget-object v2, Labcd/nA;->j6:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "update_suspend_duration"

    const/16 v3, 0xe10

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Labcd/Yz;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private Hw(Lorg/json/JSONObject;)Labcd/eA;
    .registers 9

    const/4 v4, 0x1

    const/4 v6, 0x0

    new-instance v0, Labcd/eA;

    const-string v1, "prompt_enabled"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "collect_logged_exceptions"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "collect_reports"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "collect_analytics"

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "firebase_crashlytics_enabled"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Labcd/eA;-><init>(ZZZZZ)V

    return-object v0
.end method

.method private VH(Lorg/json/JSONObject;)Labcd/hA;
    .registers 11

    const/16 v5, 0x40

    new-instance v0, Labcd/hA;

    const-string v1, "log_buffer_size"

    const v2, 0xfa00

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "max_chained_exception_depth"

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "max_custom_exception_events"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "max_custom_key_value_pairs"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "identifier_mask"

    const/16 v6, 0xff

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "send_session_without_crash"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "max_complete_sessions_count"

    const/4 v8, 0x4

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Labcd/hA;-><init>(IIIIIZI)V

    return-object v0
.end method

.method private Zo(Lorg/json/JSONObject;)Labcd/gA;
    .registers 11

    const/4 v7, 0x1

    new-instance v0, Labcd/gA;

    const-string v1, "title"

    const-string v2, "Send Crash Report?"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    const-string v3, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "send_button_title"

    const-string v4, "Send"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "show_cancel_button"

    invoke-virtual {p1, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "cancel_button_title"

    const-string v6, "Don\'t Send"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "show_always_send_button"

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "always_send_button_title"

    const-string v8, "Always Send"

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Labcd/gA;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method private j6(Lio/fabric/sdk/android/services/common/k;JLorg/json/JSONObject;)J
    .registers 9

    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    invoke-interface {p1}, Lio/fabric/sdk/android/services/common/k;->j6()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private j6(Lorg/json/JSONObject;)Labcd/Tz;
    .registers 15

    const/4 v8, 0x0

    const/4 v12, 0x1

    new-instance v0, Labcd/Tz;

    const-string v1, "url"

    const-string v2, "https://e.crashlytics.com/spi/v2/events"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flush_interval_secs"

    const/16 v3, 0x258

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "max_byte_size_per_file"

    const/16 v4, 0x1f40

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "max_file_count_per_send"

    invoke-virtual {p1, v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "max_pending_send_file_count"

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "forward_to_google_analytics"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "include_purchase_events_in_forwarded_events"

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "track_custom_events"

    invoke-virtual {p1, v8, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "track_predefined_events"

    invoke-virtual {p1, v9, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "sampling_rate"

    invoke-virtual {p1, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "flush_on_background"

    invoke-virtual {p1, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-direct/range {v0 .. v11}, Labcd/Tz;-><init>(Ljava/lang/String;IIIIZZZZIZ)V

    return-object v0
.end method

.method private v5(Lorg/json/JSONObject;)Labcd/Uz;
    .registers 6

    new-instance v0, Labcd/Uz;

    const-string v1, "hash"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "height"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/Uz;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public j6(Lio/fabric/sdk/android/services/common/k;Lorg/json/JSONObject;)Labcd/mA;
    .registers 15

    const-string v0, "settings_version"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "cache_duration"

    const/16 v1, 0xe10

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "app"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->DW(Lorg/json/JSONObject;)Labcd/Wz;

    move-result-object v4

    const-string v0, "session"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->VH(Lorg/json/JSONObject;)Labcd/hA;

    move-result-object v5

    const-string v0, "prompt"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->Zo(Lorg/json/JSONObject;)Labcd/gA;

    move-result-object v6

    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->Hw(Lorg/json/JSONObject;)Labcd/eA;

    move-result-object v7

    const-string v0, "analytics"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->j6(Lorg/json/JSONObject;)Labcd/Tz;

    move-result-object v8

    const-string v0, "beta"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->FH(Lorg/json/JSONObject;)Labcd/Yz;

    move-result-object v9

    new-instance v1, Labcd/mA;

    int-to-long v2, v11

    invoke-direct {p0, p1, v2, v3, p2}, Labcd/cA;->j6(Lio/fabric/sdk/android/services/common/k;JLorg/json/JSONObject;)J

    move-result-wide v2

    invoke-direct/range {v1 .. v11}, Labcd/mA;-><init>(JLabcd/Wz;Labcd/hA;Labcd/gA;Labcd/eA;Labcd/Tz;Labcd/Yz;II)V

    return-object v1
.end method
