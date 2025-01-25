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
    .registers 11

    const-string v0, "identifier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "reports_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "ndk_reports_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "update_required"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "hash"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/cA;->v5(Lorg/json/JSONObject;)Labcd/Uz;

    move-result-object p1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    move-object v8, p1

    new-instance p1, Labcd/Wz;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Labcd/Wz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLabcd/Uz;)V

    return-object p1
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

    move-result p1

    invoke-direct {v0, v1, p1}, Labcd/Yz;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private Hw(Lorg/json/JSONObject;)Labcd/eA;
    .registers 9

    new-instance v6, Labcd/eA;

    const-string v0, "prompt_enabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v0, "collect_logged_exceptions"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "collect_reports"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "collect_analytics"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "firebase_crashlytics_enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    move-object v0, v6

    move v1, v2

    move v2, v4

    move v4, v5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Labcd/eA;-><init>(ZZZZZ)V

    return-object v6
.end method

.method private VH(Lorg/json/JSONObject;)Labcd/hA;
    .registers 11

    new-instance v8, Labcd/hA;

    const-string v0, "log_buffer_size"

    const v1, 0xfa00

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "max_chained_exception_depth"

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "max_custom_exception_events"

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "max_custom_key_value_pairs"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "identifier_mask"

    const/16 v3, 0xff

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "send_session_without_crash"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "max_complete_sessions_count"

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    move-object v0, v8

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, p1

    invoke-direct/range {v0 .. v7}, Labcd/hA;-><init>(IIIIIZI)V

    return-object v8
.end method

.method private Zo(Lorg/json/JSONObject;)Labcd/gA;
    .registers 11

    new-instance v8, Labcd/gA;

    const-string v0, "title"

    const-string v1, "Send Crash Report?"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "message"

    const-string v2, "Looks like we crashed! Please help us fix the problem by sending a crash report."

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "send_button_title"

    const-string v3, "Send"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "show_cancel_button"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "cancel_button_title"

    const-string v6, "Don\'t Send"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "show_always_send_button"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "always_send_button_title"

    const-string v4, "Always Send"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, v8

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Labcd/gA;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-object v8
.end method

.method private j6(Lio/fabric/sdk/android/services/common/k;JLorg/json/JSONObject;)J
    .registers 7

    const-string v0, "expires_at"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_17

    :cond_d
    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    invoke-interface {p1}, Lio/fabric/sdk/android/services/common/k;->j6()J

    move-result-wide v0

    add-long/2addr p2, v0

    move-wide p1, p2

    :goto_17
    return-wide p1
.end method

.method private j6(Lorg/json/JSONObject;)Labcd/Tz;
    .registers 15

    new-instance v12, Labcd/Tz;

    const-string v0, "url"

    const-string v1, "https://e.crashlytics.com/spi/v2/events"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "flush_interval_secs"

    const/16 v2, 0x258

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "max_byte_size_per_file"

    const/16 v3, 0x1f40

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "max_file_count_per_send"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "max_pending_send_file_count"

    const/16 v6, 0x64

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "forward_to_google_analytics"

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v0, "include_purchase_events_in_forwarded_events"

    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "track_custom_events"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v0, "track_predefined_events"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v0, "sampling_rate"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "flush_on_background"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    move-object v0, v12

    move v4, v5

    move v5, v6

    move v6, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, p1

    invoke-direct/range {v0 .. v11}, Labcd/Tz;-><init>(Ljava/lang/String;IIIIZZZZIZ)V

    return-object v12
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

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Labcd/Uz;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public j6(Lio/fabric/sdk/android/services/common/k;Lorg/json/JSONObject;)Labcd/mA;
    .registers 16

    const-string v0, "settings_version"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "cache_duration"

    const/16 v1, 0xe10

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v0, "app"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->DW(Lorg/json/JSONObject;)Labcd/Wz;

    move-result-object v5

    const-string v0, "session"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->VH(Lorg/json/JSONObject;)Labcd/hA;

    move-result-object v6

    const-string v0, "prompt"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->Zo(Lorg/json/JSONObject;)Labcd/gA;

    move-result-object v7

    const-string v0, "features"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->Hw(Lorg/json/JSONObject;)Labcd/eA;

    move-result-object v8

    const-string v0, "analytics"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->j6(Lorg/json/JSONObject;)Labcd/Tz;

    move-result-object v9

    const-string v0, "beta"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/cA;->FH(Lorg/json/JSONObject;)Labcd/Yz;

    move-result-object v10

    new-instance v0, Labcd/mA;

    int-to-long v1, v12

    invoke-direct {p0, p1, v1, v2, p2}, Labcd/cA;->j6(Lio/fabric/sdk/android/services/common/k;JLorg/json/JSONObject;)J

    move-result-wide v3

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Labcd/mA;-><init>(JLabcd/Wz;Labcd/hA;Labcd/gA;Labcd/eA;Labcd/Tz;Labcd/Yz;II)V

    return-object v0
.end method
