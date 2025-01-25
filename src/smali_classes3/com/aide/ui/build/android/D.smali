.class public Lcom/aide/ui/build/android/D;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Ljavax/xml/parsers/DocumentBuilderFactory;
    .annotation runtime Labcd/ru;
        field = -0x34506834ee1d180L
    .end annotation
.end field

.field private Hw:Ljavax/xml/parsers/DocumentBuilder;
    .annotation runtime Labcd/ru;
        field = 0x4a57fad7d1601560L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/D;

    const-wide v1, 0x1ad6cda4896cf2a5L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const-wide v0, 0x3351e45b2d8a9399L  # 1.7397232900678996E-61

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/android/D;->Hw:Ljavax/xml/parsers/DocumentBuilder;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/android/D;->FH:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_26

    :try_start_18
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/android/D;->Hw:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_1e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18 .. :try_end_1e} :catch_1f
    .catchall {:try_start_18 .. :try_end_1e} :catchall_26

    goto :goto_25

    :catch_1f
    move-exception v3

    :try_start_20
    const-string v3, "Error creating document builder in firebase support."

    invoke-static {v3}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v3
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1ffbd29075851b50L
    .end annotation

    const-wide v0, -0x11fa4c9892338c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/google-services.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-object p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x5cfa16abdf658f9cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "client_id"

    const-string v1, "client_type"

    const-string v2, "oauth_client"

    const-string v3, "api_key"

    const-string v4, "services"

    const-string v5, "client_info"

    const-string v6, "client"

    const-string v7, "project_info"

    const-string v8, "current_key"

    :try_start_12
    sget-boolean v9, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v9, :cond_1e

    const-wide v9, 0x26b86454bd6ff720L  # 3.68984158395332E-122

    invoke-static {v9, v10, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    invoke-static {p1}, Labcd/FileSystemUtils;->lg(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v9

    invoke-static {v9}, Labcd/FileSystemUtils;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_ea

    :try_start_2b
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e9

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e9

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "gcm_defaultSenderId"

    const-string v12, "project_number"

    invoke-direct {p0, v9, v12, v10, v7}, Lcom/aide/ui/build/android/D;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    const-string v9, "firebase_database_url"

    const-string v12, "firebase_url"

    invoke-direct {p0, v9, v12, v10, v7}, Lcom/aide/ui/build/android/D;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    const-string v9, "google_storage_bucket"

    const-string v12, "storage_bucket"

    invoke-direct {p0, v9, v12, v10, v7}, Lcom/aide/ui/build/android/D;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/aide/ui/build/android/D;->j6(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    const-string v7, "google_app_id"

    const-string v9, "mobilesdk_app_id"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v7, v9, v10, v5}, Lcom/aide/ui/build/android/D;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    :cond_6e
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const-string v5, "ga_trackingID"

    const-string v7, "analytics_property"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v5, v7, v10, v4}, Lcom/aide/ui/build/android/D;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V

    :cond_7f
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b1

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    :goto_8b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_b1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ae

    const-string v3, "google_api_key"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "google_crash_reporting_api_key"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    :cond_ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_8b

    :cond_b1
    :goto_b1
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_bb
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v5, v3, :cond_e9

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_e2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e2

    const-string v1, "default_web_client_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_e1} :catch_e5
    .catchall {:try_start_2b .. :try_end_e1} :catchall_ea

    goto :goto_e9

    :cond_e2
    add-int/lit8 v5, v5, 0x1

    goto :goto_bb

    :catch_e5
    move-exception v0

    :try_start_e6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    :cond_e9
    :goto_e9
    return-object v10

    :catchall_ea
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v1, :cond_fb

    const-wide v2, 0x26b86454bd6ff720L  # 3.68984158395332E-122

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_fb
    goto :goto_fd

    :goto_fc
    throw v0

    :goto_fd
    goto :goto_fc
.end method

.method private j6(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x23f68483553c8e0L
    .end annotation

    const-string v0, "package_name"

    const-string v1, "android_client_info"

    const-string v2, "client_info"

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v3, :cond_12

    const-wide v3, 0x2ae542c8e6131530L  # 4.74627254859653E-102

    invoke-static {v3, v4, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    const/4 v3, 0x0

    :goto_13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_45

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    return-object v4

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No matching client_info found in google-service.json for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5e
    .catchall {:try_start_6 .. :try_end_5e} :catchall_5f

    return-object v0

    :catchall_5f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v1, :cond_70

    const-wide v2, 0x2ae542c8e6131530L  # 4.74627254859653E-102

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    goto :goto_72

    :goto_71
    throw v0

    :goto_72
    goto :goto_71
.end method

.method private j6(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x69ab00609e0ff12dL
    .end annotation

    const-wide v0, -0x5b586aa6b5109cf9L  # -4.153155712444921E-132

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "resources"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x37e3932b35e7d858L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x3c550e170655e580L  # -9.707945366858793E17

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x3c550e170655e580L  # -9.707945366858793E17

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method private j6(Ljava/lang/String;Lorg/w3c/dom/Document;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5047cf10e4284d10L
    .end annotation

    const-string v0, "yes"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v1, :cond_e

    const-wide v1, 0x3877288a7cc9b89cL  # 1.0889010023238295E-36

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_4d

    :cond_e
    :try_start_e
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    const-string v2, "indent"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "omit-xml-declaration"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "{http://xml.apache.org/xslt}indent-amount"

    const-string v2, "4"

    invoke-virtual {v1, v0, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_45} :catch_46
    .catchall {:try_start_e .. :try_end_45} :catchall_4d

    goto :goto_4c

    :catch_46
    move-exception v0

    :try_start_47
    const-string v0, "Error generating xml file in firebase support"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4d

    :goto_4c
    return-void

    :catchall_4d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, 0x3877288a7cc9b89cL  # 1.0889010023238295E-36

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    throw v0
.end method

.method private j6(Ljava/util/Map;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xc49259a8589cab0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/w3c/dom/Document;",
            "Lorg/w3c/dom/Element;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2d3c4951453b2b8L  # 4.83620596498643E-295

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "string"

    invoke-interface {p2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "translatable"

    const-string v4, "false"

    invoke-interface {v3, v1, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    invoke-interface {p3, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_44

    goto :goto_18

    :cond_43
    return-void

    :catchall_44
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x2d3c4951453b2b8L  # 4.83620596498643E-295

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method


# virtual methods
.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/D;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x20b32599bc491278L  # -1.1805942702000296E151

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/D;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_47

    if-eqz v1, :cond_46

    :try_start_1a
    invoke-direct {p0, v0, p2}, Lcom/aide/ui/build/android/D;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/values/google-services.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/build/android/D;->Hw:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/build/android/D;->j6(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/aide/ui/build/android/D;->j6(Ljava/util/Map;Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v1, v2}, Lcom/aide/ui/build/android/D;->j6(Ljava/lang/String;Lorg/w3c/dom/Document;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3f} :catch_40
    .catchall {:try_start_1a .. :try_end_3f} :catchall_47

    goto :goto_46

    :catch_40
    move-exception v0

    :try_start_41
    const-string v0, "Error processing firebase configuration"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_47

    :cond_46
    :goto_46
    return-void

    :catchall_47
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/D;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x20b32599bc491278L  # -1.1805942702000296E151

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method
