.class public final Lcom/google/android/gms/internal/ads/xC;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lcom/google/android/gms/internal/ads/AD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/gms/internal/ads/AD<",
        "Lcom/google/android/gms/internal/ads/wC;",
        ">;"
    }
.end annotation


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field private static final FH:Ljava/util/regex/Pattern;

.field private static final j6:Ljava/util/regex/Pattern;


# instance fields
.field private final Hw:Ljava/lang/String;

.field private final v5:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xC;->j6:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xC;->DW:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xC;->FH:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/xC;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xC;->Hw:Ljava/lang/String;

    :try_start_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xC;->v5:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-wide p2

    :cond_8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final DW(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/wC;
    .registers 103

    move-object/from16 v1, p0

    const-string v0, "ContentProtection"

    const-string v2, "lang"

    const-string v3, "audioSamplingRate"

    const-string v4, "height"

    const-string v5, "width"

    const-string v6, "codecs"

    const-string v7, "mimeType"

    const-string v8, "AdaptationSet"

    const-string v9, "Period"

    const-string v10, "MPD"

    const-string v11, "id"

    const-string v12, "BaseURL"

    :try_start_1a
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/xC;->v5:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v15, p2

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/4 v14, 0x2

    if-ne v15, v14, :cond_9a6

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9a6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v14, "availabilityStartTime"

    move-object/from16 p1, v15

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_44} :catch_9af

    move-object v15, v0

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    if-nez v14, :cond_4f

    move-wide/from16 v19, v0

    goto :goto_55

    :cond_4f
    :try_start_4f
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/TD;->v5(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v19, v16

    :goto_55
    const-string v14, "mediaPresentationDuration"

    invoke-static {v13, v14, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    const-string v14, "minBufferTime"

    invoke-static {v13, v14, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v23

    const-string v14, "type"

    const/4 v0, 0x0

    invoke-interface {v13, v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_75

    const-string v0, "dynamic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/16 v25, 0x1

    goto :goto_77

    :cond_75
    const/16 v25, 0x0

    :goto_77
    if-eqz v25, :cond_88

    const-string v0, "minimumUpdatePeriod"

    move-object v1, v15

    const-wide v14, -0x7fffffffffffffffL  # -4.9E-324

    invoke-static {v13, v0, v14, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    move-wide/from16 v27, v21

    goto :goto_90

    :cond_88
    move-object v1, v15

    const-wide v14, -0x7fffffffffffffffL  # -4.9E-324

    move-wide/from16 v27, v14

    :goto_90
    if-eqz v25, :cond_9b

    const-string v0, "timeShiftBufferDepth"

    invoke-static {v13, v0, v14, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    move-wide/from16 v29, v21

    goto :goto_9d

    :cond_9b
    move-wide/from16 v29, v14

    :goto_9d
    if-eqz v25, :cond_a6

    const-string v0, "suggestedPresentationDelay"

    invoke-static {v13, v0, v14, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v31

    goto :goto_ab

    :cond_a6
    const-wide v31, -0x7fffffffffffffffL  # -4.9E-324

    :goto_ab
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v25, :cond_b8

    const-wide v14, -0x7fffffffffffffffL  # -4.9E-324

    goto :goto_ba

    :cond_b8
    const-wide/16 v14, 0x0

    :goto_ba
    move-object/from16 v36, p0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v99, v1

    move-object/from16 v1, p1

    move-object/from16 p1, v99

    :goto_ca
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_120

    if-nez v35, :cond_fc

    invoke-static {v13, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v38, v1

    move-object/from16 v83, v2

    move-object/from16 v92, v3

    move-object/from16 v41, v4

    move-object/from16 v64, v5

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object v2, v8

    move-object v3, v10

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    const/4 v4, 0x0

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    const/16 v35, 0x1

    move-object/from16 v8, p0

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_950

    :cond_fc
    move-object/from16 v38, v1

    move-object/from16 v83, v2

    move-object/from16 v92, v3

    move-object/from16 v41, v4

    move-object/from16 v64, v5

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object v2, v8

    move-object/from16 v39, v10

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    move-wide/from16 v43, v14

    const/4 v4, 0x0

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v8, p0

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_94c

    :cond_120
    move-object/from16 v38, v1

    const-string v1, "UTCTiming"

    invoke-static {v13, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_128
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_128} :catch_859

    move-object/from16 v39, v10

    const-string v10, "schemeIdUri"

    move-object/from16 v40, v0

    const-string v0, "value"

    if-eqz v1, :cond_145

    :try_start_132
    new-instance v1, Lcom/google/android/gms/internal/ads/PC;

    move-object/from16 v41, v2

    const/4 v2, 0x0

    invoke-interface {v13, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/google/android/gms/internal/ads/PC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v34, v1

    goto :goto_157

    :cond_145
    move-object/from16 v41, v2

    const-string v1, "Location"

    invoke-static {v13, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_178

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    :goto_157
    move-object/from16 v92, v3

    move-object/from16 v64, v5

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object v2, v8

    move-object v0, v9

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    move-object/from16 v3, v39

    move-object/from16 v1, v40

    move-object/from16 v83, v41

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v8, p0

    move-object/from16 v41, v4

    const/4 v4, 0x0

    goto/16 :goto_950

    :cond_178
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92d

    if-nez v37, :cond_92d

    const/4 v1, 0x0

    invoke-interface {v13, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "start"

    move-object/from16 v42, v2

    invoke-static {v13, v1, v14, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide/from16 v43, v14

    const-string v14, "duration"

    move-wide/from16 v45, v1

    const-wide v1, -0x7fffffffffffffffL  # -4.9E-324

    invoke-static {v13, v14, v1, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v48, v14

    move-object/from16 v2, v36

    move-object/from16 v14, v38

    const/16 v36, 0x0

    const/16 v47, 0x0

    :goto_1ab
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_205

    if-nez v47, :cond_1e0

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v84, v0

    move-object/from16 v92, v3

    move-object/from16 v64, v5

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object/from16 v51, v9

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    move-object/from16 v83, v41

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    const/16 v47, 0x1

    move-object v7, v1

    move-object v3, v2

    move-object/from16 v41, v4

    move-object v2, v8

    const/4 v4, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_8a9

    :cond_1e0
    move-object/from16 v84, v0

    move-object v0, v2

    move-object/from16 v92, v3

    move-object/from16 v64, v5

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object v2, v8

    move-object/from16 v51, v9

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    move-object/from16 v50, v14

    move-object/from16 v83, v41

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v8, p0

    move-object v7, v1

    move-object/from16 v41, v4

    goto/16 :goto_829

    :cond_205
    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15
    :try_end_209
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_132 .. :try_end_209} :catch_859

    move-object/from16 v50, v14

    const-string v14, "SegmentTemplate"

    move-object/from16 v51, v9

    const-string v9, "SegmentList"

    move-object/from16 v52, v2

    const-string v2, "SegmentBase"

    if-eqz v15, :cond_85e

    const/4 v15, -0x1

    :try_start_218
    invoke-static {v13, v11, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v53

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v52

    move-object/from16 v58, v1

    const/4 v15, 0x0

    invoke-interface {v13, v15, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v59, v8

    invoke-interface {v13, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v55, v14

    const/4 v15, -0x1

    invoke-static {v13, v5, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v56, v9

    invoke-static {v13, v4, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    const/high16 v15, -0x40800000  # -1.0f

    invoke-static {v13, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v15

    move-object/from16 v57, v2

    move/from16 v60, v15

    const/4 v2, -0x1

    invoke-static {v13, v3, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v2, v41

    move-object/from16 v41, v3

    const/4 v3, 0x0

    invoke-interface {v13, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v62, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v63, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v64, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move/from16 v65, v9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v76, v5

    move/from16 v77, v14

    move-object/from16 v79, v36

    move-object/from16 v14, v50

    move-object/from16 v5, v61

    const/16 v78, 0x0

    const/16 v80, 0x0

    move-object/from16 v61, v9

    move/from16 v9, v52

    const/16 v52, -0x1

    :goto_287
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v66

    if-eqz v66, :cond_2a6

    if-nez v78, :cond_29e

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v83, v2

    move-object/from16 v82, v3

    const/16 v78, 0x1

    goto/16 :goto_354

    :cond_29e
    move-object/from16 v83, v2

    move-object/from16 v82, v3

    move-object/from16 v81, v14

    goto/16 :goto_32d

    :cond_2a6
    move-object/from16 v81, v14

    move-object/from16 v14, p1

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v66

    move-object/from16 p1, v14

    if-eqz v66, :cond_2c1

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/zzhp$zza;

    move-result-object v14

    if-eqz v14, :cond_2bb

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2bb
    move-object/from16 v83, v2

    move-object/from16 v82, v3

    goto/16 :goto_32d

    :cond_2c1
    const-string v14, "ContentComponent"

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2e9

    move-object/from16 v82, v3

    const/4 v14, 0x0

    invoke-interface {v13, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v5, :cond_2d4

    move-object v5, v3

    goto :goto_2de

    :cond_2d4
    if-nez v3, :cond_2d7

    goto :goto_2de

    :cond_2d7
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    :goto_2de
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/xC;->j6(II)I

    move-result v9

    move-object/from16 v83, v2

    goto :goto_32d

    :cond_2e9
    move-object/from16 v82, v3

    const-string v3, "Role"

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31f

    const/4 v3, 0x0

    invoke-static {v13, v10, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v83, v2

    invoke-static {v13, v0, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2fe
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "Role"

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2fe

    const-string v3, "urn:mpeg:dash:role:2011"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31b

    const-string v3, "main"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31b

    const/4 v2, 0x1

    goto :goto_31c

    :cond_31b
    const/4 v2, 0x0

    :goto_31c
    or-int v80, v80, v2

    goto :goto_32d

    :cond_31f
    move-object/from16 v83, v2

    const-string v2, "AudioChannelConfiguration"

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_330

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/xC;->v5(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v52

    :goto_32d
    move-object/from16 v14, v81

    goto :goto_354

    :cond_330
    const-string v2, "Accessibility"

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_342

    const-string v2, "Accessibility"

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32d

    :cond_342
    const-string v2, "SupplementalProperty"

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_382

    const-string v2, "SupplementalProperty"

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32d

    :goto_354
    move-object/from16 v84, v0

    move-object/from16 v98, v4

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    move-object/from16 v92, v41

    move-object/from16 v0, v56

    move-object/from16 v6, v57

    move-object/from16 v4, v61

    move/from16 v91, v62

    move-object/from16 v3, v63

    move-object/from16 v41, v64

    move-object/from16 v64, v76

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v76, v1

    move-object/from16 v57, v8

    move-object/from16 v1, v55

    move-object/from16 v8, p0

    goto/16 :goto_790

    :cond_382
    const-string v2, "Representation"

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2
    :try_end_388
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_218 .. :try_end_388} :catch_859

    const-string v3, "InbandEventStream"

    if-eqz v2, :cond_711

    const/4 v2, 0x0

    :try_start_38d
    invoke-interface {v13, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    const-string v2, "bandwidth"

    const/4 v14, -0x1

    invoke-static {v13, v2, v14}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v70

    invoke-static {v13, v7, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v6, v8}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v84, v0

    move/from16 v0, v77

    move-object/from16 v99, v76

    move-object/from16 v76, v1

    move-object/from16 v1, v99

    invoke-static {v13, v1, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v71

    move/from16 v77, v0

    move/from16 v0, v65

    move-object/from16 v99, v64

    move-object/from16 v64, v1

    move-object/from16 v1, v99

    invoke-static {v13, v1, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v72

    move/from16 v65, v0

    move/from16 v0, v60

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v73

    move/from16 v60, v0

    move/from16 v0, v62

    move-object/from16 v99, v41

    move-object/from16 v41, v1

    move-object/from16 v1, v99

    invoke-static {v13, v1, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v62

    move/from16 v91, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v92, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v93, v6

    move/from16 v69, v52

    move-object/from16 v68, v79

    move-object/from16 v6, v81

    const/16 v67, 0x0

    :goto_3ea
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v74

    if-eqz v74, :cond_415

    if-nez v67, :cond_3fc

    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v67, 0x1

    goto :goto_425

    :cond_3fc
    move-object/from16 v74, v6

    move-object/from16 v94, v7

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v10, v55

    move-object/from16 v7, v56

    move-object/from16 v6, v57

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v57, v8

    move-object/from16 v8, p0

    goto/16 :goto_4c4

    :cond_415
    move-object/from16 v74, v6

    const-string v6, "AudioChannelConfiguration"

    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_441

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/xC;->v5(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v69

    move-object/from16 v6, v74

    :goto_425
    move-object/from16 v94, v7

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v10, v55

    move-object/from16 v7, v56

    move-object/from16 v55, v68

    move/from16 v56, v69

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object v11, v6

    move-object/from16 v6, v57

    move-object/from16 v57, v8

    move-object/from16 v8, p0

    goto/16 :goto_4ca

    :cond_441
    move-object/from16 v6, v57

    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v57

    if-eqz v57, :cond_465

    move-object/from16 v94, v7

    move-object/from16 v7, v68

    check-cast v7, Lcom/google/android/gms/internal/ads/LC;
    :try_end_44f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38d .. :try_end_44f} :catch_859

    move-object/from16 v57, v8

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v8, p0

    :try_start_458
    invoke-direct {v8, v13, v7}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/LC;)Lcom/google/android/gms/internal/ads/LC;

    move-result-object v68

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v10, v55

    move-object/from16 v7, v56

    goto :goto_4c4

    :cond_465
    move-object/from16 v94, v7

    move-object/from16 v57, v8

    move-object/from16 v7, v56

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v8, p0

    invoke-static {v13, v7}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v56

    move-object/from16 v95, v10

    if-eqz v56, :cond_48c

    move-object/from16 v10, v68

    check-cast v10, Lcom/google/android/gms/internal/ads/IC;

    invoke-direct {v8, v13, v10}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/IC;)Lcom/google/android/gms/internal/ads/IC;

    move-result-object v10

    move-object/from16 v68, v10

    move-object/from16 v96, v11

    move-object/from16 v10, v55

    goto :goto_4c4

    :catch_489
    move-exception v0

    goto/16 :goto_9b1

    :cond_48c
    move-object/from16 v10, v55

    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_4a1

    move-object/from16 v96, v11

    move-object/from16 v11, v68

    check-cast v11, Lcom/google/android/gms/internal/ads/JC;

    invoke-direct {v8, v13, v11}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/JC;)Lcom/google/android/gms/internal/ads/JC;

    move-result-object v11

    move-object/from16 v68, v11

    goto :goto_4c4

    :cond_4a1
    move-object/from16 v96, v11

    move-object/from16 v11, p1

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v55

    move-object/from16 p1, v11

    if-eqz v55, :cond_4b7

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/zzhp$zza;

    move-result-object v11

    if-eqz v11, :cond_4c4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c4

    :cond_4b7
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4c4

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c4
    :goto_4c4
    move-object/from16 v55, v68

    move/from16 v56, v69

    move-object/from16 v11, v74

    :goto_4ca
    move-object/from16 v97, v12

    const-string v12, "Representation"

    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6f8

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4fe

    if-eqz v14, :cond_4fa

    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v12, v3

    move-object/from16 v98, v4

    const/4 v4, 0x0

    :goto_4e6
    if-ge v4, v12, :cond_574

    aget-object v67, v3, v4

    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/HD;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_4f7

    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v68

    if-eqz v68, :cond_4f7

    goto :goto_520

    :cond_4f7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e6

    :cond_4fa
    move-object/from16 v98, v4

    goto/16 :goto_574

    :cond_4fe
    move-object/from16 v98, v4

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_526

    if-eqz v14, :cond_574

    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v12, 0x0

    :goto_510
    if-ge v12, v4, :cond_574

    aget-object v67, v3, v12

    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/HD;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_523

    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v68

    if-eqz v68, :cond_523

    :goto_520
    move-object/from16 v3, v67

    goto :goto_575

    :cond_523
    add-int/lit8 v12, v12, 0x1

    goto :goto_510

    :cond_526
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52e

    move-object v3, v2

    goto :goto_575

    :cond_52e
    const-string v3, "application/mp4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54c

    const-string v3, "stpp"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_53c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_458 .. :try_end_53c} :catch_489

    if-eqz v3, :cond_541

    const-string v3, "application/ttml+xml"

    goto :goto_575

    :cond_541
    :try_start_541
    const-string v3, "wvtt"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_547
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_541 .. :try_end_547} :catch_489

    if-eqz v3, :cond_574

    const-string v3, "application/x-mp4-vtt"

    goto :goto_575

    :cond_54c
    :try_start_54c
    const-string v3, "application/x-rawcc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_574

    if-eqz v14, :cond_574

    const-string v3, "cea708"

    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_55c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54c .. :try_end_55c} :catch_489

    if-eqz v3, :cond_561

    const-string v3, "application/cea-708"

    goto :goto_575

    :cond_561
    :try_start_561
    const-string v3, "eia608"

    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_571

    const-string v3, "cea608"

    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_56f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_561 .. :try_end_56f} :catch_489

    if-eqz v3, :cond_574

    :cond_571
    const-string v3, "application/cea-608"

    goto :goto_575

    :cond_574
    :goto_574
    const/4 v3, 0x0

    :goto_575
    if-eqz v3, :cond_69c

    :try_start_577
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_594

    const/16 v74, 0x0

    move-object/from16 v67, v2

    move-object/from16 v68, v3

    move-object/from16 v69, v14

    move/from16 v75, v80

    invoke-static/range {v66 .. v75}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    :goto_58b
    move-object/from16 v86, v2

    move-object/from16 v75, v7

    move-object/from16 v74, v10

    const/4 v12, 0x1

    goto/16 :goto_6b1

    :cond_594
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5af

    const/16 v73, 0x0

    move-object/from16 v67, v2

    move-object/from16 v68, v3

    move-object/from16 v69, v14

    move/from16 v71, v56

    move/from16 v72, v62

    move/from16 v74, v80

    move-object/from16 v75, v5

    invoke-static/range {v66 .. v75}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    goto :goto_58b

    :cond_5af
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/xC;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69c

    const-string v4, "application/cea-608"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_622

    const/4 v4, 0x0

    :goto_5be
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_61c

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zC;

    move-object/from16 v74, v10

    const-string v10, "urn:scte:dash:cc:cea-608:2015"

    move-object/from16 v75, v7

    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_615

    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    if-eqz v7, :cond_615

    sget-object v7, Lcom/google/android/gms/internal/ads/xC;->DW:Ljava/util/regex/Pattern;

    iget-object v10, v12, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_5f6

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v12, 0x1

    goto/16 :goto_687

    :cond_5f6
    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_609

    const-string v10, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_610

    :cond_609
    new-instance v7, Ljava/lang/String;

    const-string v10, "Unable to parse CEA-608 channel number from: "

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_610
    const-string v10, "MpdParser"

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_615
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v74

    move-object/from16 v7, v75

    goto :goto_5be

    :cond_61c
    move-object/from16 v75, v7

    move-object/from16 v74, v10

    :cond_620
    const/4 v12, 0x1

    goto :goto_686

    :cond_622
    move-object/from16 v75, v7

    move-object/from16 v74, v10

    const-string v4, "application/cea-708"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68a

    const/4 v4, 0x0

    :goto_62f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_620

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zC;

    const-string v10, "urn:scte:dash:cc:cea-708:2015"

    iget-object v12, v7, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_682

    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    if-eqz v10, :cond_682

    sget-object v10, Lcom/google/android/gms/internal/ads/xC;->FH:Ljava/util/regex/Pattern;

    iget-object v12, v7, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_661

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_687

    :cond_661
    const/4 v12, 0x1

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_675

    const-string v10, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_67c

    :cond_675
    new-instance v7, Ljava/lang/String;

    const-string v10, "Unable to parse CEA-708 service block number from: "

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_67c
    const-string v10, "MpdParser"

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_683

    :cond_682
    const/4 v12, 0x1

    :goto_683
    add-int/lit8 v4, v4, 0x1

    goto :goto_62f

    :goto_686
    const/4 v4, -0x1

    :goto_687
    move/from16 v73, v4

    goto :goto_68d

    :cond_68a
    const/4 v12, 0x1

    const/16 v73, -0x1

    :goto_68d
    move-object/from16 v67, v2

    move-object/from16 v68, v3

    move-object/from16 v69, v14

    move/from16 v71, v80

    move-object/from16 v72, v5

    invoke-static/range {v66 .. v73}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    goto :goto_6af

    :cond_69c
    move-object/from16 v75, v7

    move-object/from16 v74, v10

    const/4 v12, 0x1

    move-object/from16 v67, v2

    move-object/from16 v68, v3

    move-object/from16 v69, v14

    move/from16 v71, v80

    move-object/from16 v72, v5

    invoke-static/range {v66 .. v72}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v2

    :goto_6af
    move-object/from16 v86, v2

    :goto_6b1
    if-eqz v55, :cond_6b6

    move-object/from16 v88, v55

    goto :goto_6bd

    :cond_6b6
    new-instance v2, Lcom/google/android/gms/internal/ads/LC;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/LC;-><init>()V

    move-object/from16 v88, v2

    :goto_6bd
    new-instance v2, Lcom/google/android/gms/internal/ads/yC;

    move-object/from16 v85, v2

    move-object/from16 v87, v11

    move-object/from16 v89, v0

    move-object/from16 v90, v1

    invoke-direct/range {v85 .. v90}, Lcom/google/android/gms/internal/ads/yC;-><init>(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/GC;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/yC;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6ec

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6dc

    const/4 v0, 0x2

    goto :goto_6ed

    :cond_6dc
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e4

    const/4 v0, 0x1

    goto :goto_6ed

    :cond_6e4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6ec

    const/4 v0, 0x3

    goto :goto_6ed

    :cond_6ec
    const/4 v0, -0x1

    :goto_6ed
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(II)I

    move-result v0

    move-object/from16 v4, v61

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v0

    goto :goto_749

    :cond_6f8
    move-object/from16 v98, v4

    move-object/from16 v68, v55

    move/from16 v69, v56

    move-object/from16 v8, v57

    move-object/from16 v12, v97

    move-object/from16 v57, v6

    move-object/from16 v56, v7

    move-object/from16 v55, v10

    move-object v6, v11

    move-object/from16 v7, v94

    move-object/from16 v10, v95

    move-object/from16 v11, v96

    goto/16 :goto_3ea

    :cond_711
    move-object/from16 v84, v0

    move-object/from16 v98, v4

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    move-object/from16 v92, v41

    move-object/from16 v74, v55

    move-object/from16 v75, v56

    move-object/from16 v6, v57

    move-object/from16 v4, v61

    move/from16 v91, v62

    move-object/from16 v41, v64

    move-object/from16 v64, v76

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v76, v1

    move-object/from16 v57, v8

    move-object/from16 v8, p0

    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_752

    move-object/from16 v0, v79

    check-cast v0, Lcom/google/android/gms/internal/ads/LC;

    invoke-direct {v8, v13, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/LC;)Lcom/google/android/gms/internal/ads/LC;

    move-result-object v79

    :goto_749
    move-object/from16 v3, v63

    move-object/from16 v1, v74

    move-object/from16 v0, v75

    :goto_74f
    move-object/from16 v14, v81

    goto :goto_790

    :cond_752
    move-object/from16 v0, v75

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_767

    move-object/from16 v1, v79

    check-cast v1, Lcom/google/android/gms/internal/ads/IC;

    invoke-direct {v8, v13, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/IC;)Lcom/google/android/gms/internal/ads/IC;

    move-result-object v79

    move-object/from16 v3, v63

    move-object/from16 v1, v74

    goto :goto_74f

    :cond_767
    move-object/from16 v1, v74

    invoke-static {v13, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77a

    move-object/from16 v2, v79

    check-cast v2, Lcom/google/android/gms/internal/ads/JC;

    invoke-direct {v8, v13, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/JC;)Lcom/google/android/gms/internal/ads/JC;

    move-result-object v79

    move-object/from16 v3, v63

    goto :goto_74f

    :cond_77a
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78a

    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;

    move-result-object v2

    move-object/from16 v3, v63

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74f

    :cond_78a
    move-object/from16 v3, v63

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;)Z

    goto :goto_74f

    :goto_790
    move-object/from16 v2, v59

    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_82d

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_7a2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_814

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/yC;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/yC;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/yC;->Hw:Ljava/util/ArrayList;

    move-object/from16 v10, v82

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7c6

    new-instance v11, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v11, v7}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v6

    :cond_7c6
    move-object/from16 v69, v6

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/yC;->v5:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/yC;->DW:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/yC;->FH:Lcom/google/android/gms/internal/ads/GC;

    instance-of v11, v5, Lcom/google/android/gms/internal/ads/LC;

    if-eqz v11, :cond_7ed

    new-instance v11, Lcom/google/android/gms/internal/ads/FC;

    const/16 v66, 0x0

    const-wide/16 v67, -0x1

    move-object/from16 v71, v5

    check-cast v71, Lcom/google/android/gms/internal/ads/LC;

    const/16 v73, 0x0

    const-wide/16 v74, -0x1

    move-object/from16 v65, v11

    move-object/from16 v70, v7

    move-object/from16 v72, v6

    invoke-direct/range {v65 .. v75}, Lcom/google/android/gms/internal/ads/FC;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/LC;Ljava/util/List;Ljava/lang/String;J)V

    goto :goto_804

    :cond_7ed
    instance-of v11, v5, Lcom/google/android/gms/internal/ads/HC;

    if-eqz v11, :cond_80c

    new-instance v11, Lcom/google/android/gms/internal/ads/EC;

    const/16 v66, 0x0

    const-wide/16 v67, -0x1

    move-object/from16 v71, v5

    check-cast v71, Lcom/google/android/gms/internal/ads/HC;

    move-object/from16 v65, v11

    move-object/from16 v70, v7

    move-object/from16 v72, v6

    invoke-direct/range {v65 .. v72}, Lcom/google/android/gms/internal/ads/EC;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/HC;Ljava/util/List;)V

    :goto_804
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v82, v10

    goto :goto_7a2

    :cond_80c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_814
    new-instance v1, Lcom/google/android/gms/internal/ads/vC;

    move-object/from16 v52, v1

    move/from16 v54, v9

    move-object/from16 v55, v0

    move-object/from16 v56, v15

    move-object/from16 v57, v98

    invoke-direct/range {v52 .. v57}, Lcom/google/android/gms/internal/ads/vC;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v7, v58

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v8

    :goto_829
    move-object v3, v0

    const/4 v4, 0x0

    goto/16 :goto_8a7

    :cond_82d
    move-object/from16 v56, v0

    move-object/from16 v55, v1

    move-object/from16 v59, v2

    move-object/from16 v63, v3

    move-object/from16 v61, v4

    move-object/from16 v8, v57

    move-object/from16 v1, v76

    move-object/from16 v3, v82

    move-object/from16 v2, v83

    move-object/from16 v0, v84

    move/from16 v62, v91

    move-object/from16 v7, v94

    move-object/from16 v10, v95

    move-object/from16 v11, v96

    move-object/from16 v12, v97

    move-object/from16 v4, v98

    move-object/from16 v57, v6

    move-object/from16 v76, v64

    move-object/from16 v6, v93

    move-object/from16 v64, v41

    move-object/from16 v41, v92

    goto/16 :goto_287

    :catch_859
    move-exception v0

    move-object/from16 v8, p0

    goto/16 :goto_9b1

    :cond_85e
    move-object/from16 v84, v0

    move-object/from16 v92, v3

    move-object/from16 v64, v5

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object v0, v9

    move-object/from16 v95, v10

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    move-object/from16 v83, v41

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object v7, v1

    move-object v6, v2

    move-object/from16 v41, v4

    move-object v2, v8

    move-object v1, v14

    move-object/from16 v8, p0

    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88d

    move-object/from16 v3, v52

    const/4 v4, 0x0

    invoke-direct {v3, v13, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/LC;)Lcom/google/android/gms/internal/ads/LC;

    move-result-object v0

    goto :goto_8a5

    :cond_88d
    move-object/from16 v3, v52

    const/4 v4, 0x0

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89b

    invoke-direct {v3, v13, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/IC;)Lcom/google/android/gms/internal/ads/IC;

    move-result-object v0

    goto :goto_8a5

    :cond_89b
    invoke-static {v13, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a7

    invoke-direct {v3, v13, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/JC;)Lcom/google/android/gms/internal/ads/JC;

    move-result-object v0

    :goto_8a5
    move-object/from16 v36, v0

    :cond_8a7
    :goto_8a7
    move-object/from16 v14, v50

    :goto_8a9
    move-object/from16 v0, v51

    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_913

    new-instance v1, Lcom/google/android/gms/internal/ads/AC;

    move-object/from16 v5, v42

    move-wide/from16 v9, v45

    invoke-direct {v1, v5, v9, v10, v7}, Lcom/google/android/gms/internal/ads/AC;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/AC;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/AC;->DW:J

    cmp-long v9, v6, v21

    if-nez v9, :cond_8f7

    if-eqz v25, :cond_8da

    move-object/from16 v36, v3

    move-object/from16 v3, v39

    move-object/from16 v1, v40

    move-wide/from16 v14, v43

    const/16 v37, 0x1

    goto/16 :goto_950

    :cond_8da
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to determine start of period "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f7
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v21

    if-nez v1, :cond_908

    move-wide/from16 v6, v21

    :goto_905
    move-object/from16 v1, v40

    goto :goto_90c

    :cond_908
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/AC;->DW:J

    add-long/2addr v6, v9

    goto :goto_905

    :goto_90c
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v36, v3

    move-wide v14, v6

    goto :goto_94e

    :cond_913
    move-object v9, v0

    move-object v8, v2

    move-object v2, v3

    move-object v1, v7

    move-object/from16 v4, v41

    move-object/from16 v5, v64

    move-object/from16 v41, v83

    move-object/from16 v0, v84

    move-object/from16 v3, v92

    move-object/from16 v6, v93

    move-object/from16 v7, v94

    move-object/from16 v10, v95

    move-object/from16 v11, v96

    move-object/from16 v12, v97

    goto/16 :goto_1ab

    :cond_92d
    move-object/from16 v92, v3

    move-object/from16 v64, v5

    move-object/from16 v93, v6

    move-object/from16 v94, v7

    move-object v2, v8

    move-object v0, v9

    move-object/from16 v96, v11

    move-object/from16 v97, v12

    move-wide/from16 v43, v14

    move-object/from16 v1, v40

    move-object/from16 v83, v41

    const/4 v12, 0x1

    const-wide v21, -0x7fffffffffffffffL  # -4.9E-324

    move-object/from16 v8, p0

    move-object/from16 v41, v4

    const/4 v4, 0x0

    :goto_94c
    move-wide/from16 v14, v43

    :goto_94e
    move-object/from16 v3, v39

    :goto_950
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98e

    cmp-long v0, v16, v21

    if-nez v0, :cond_96c

    cmp-long v0, v14, v21

    if-eqz v0, :cond_961

    move-wide/from16 v21, v14

    goto :goto_96e

    :cond_961
    if-eqz v25, :cond_964

    goto :goto_96c

    :cond_964
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "Unable to determine duration of static manifest."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_96c
    :goto_96c
    move-wide/from16 v21, v16

    :goto_96e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_986

    new-instance v0, Lcom/google/android/gms/internal/ads/wC;

    move-object/from16 v18, v0

    move-wide/from16 v26, v27

    move-wide/from16 v28, v29

    move-wide/from16 v30, v31

    move-object/from16 v32, v34

    move-object/from16 v34, v1

    invoke-direct/range {v18 .. v34}, Lcom/google/android/gms/internal/ads/wC;-><init>(JJJZJJJLcom/google/android/gms/internal/ads/PC;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0

    :cond_986
    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "No periods found."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98e
    move-object v9, v0

    move-object v0, v1

    move-object v8, v2

    move-object v10, v3

    move-object/from16 v1, v38

    move-object/from16 v4, v41

    move-object/from16 v5, v64

    move-object/from16 v2, v83

    move-object/from16 v3, v92

    move-object/from16 v6, v93

    move-object/from16 v7, v94

    move-object/from16 v11, v96

    move-object/from16 v12, v97

    goto/16 :goto_ca

    :cond_9a6
    move-object v8, v1

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    const-string v1, "inputStream does not contain a valid media presentation description"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_577 .. :try_end_9af} :catch_489

    :catch_9af
    move-exception v0

    move-object v8, v1

    :goto_9b1
    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/Throwable;)V

    goto :goto_9b8

    :goto_9b7
    throw v1

    :goto_9b8
    goto :goto_9b7
.end method

.method private static DW(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/zzhp$zza;
    .registers 9

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v5, v3

    const/4 v4, 0x0

    :cond_11
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const/4 v6, 0x4

    if-nez v3, :cond_3c

    const-string v7, "cenc:pssh"

    invoke-static {p0, v7}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v6, :cond_3c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/GA;->j6([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_7a

    const-string v3, "MpdParser"

    const-string v6, "Skipping malformed cenc:pssh data"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    goto :goto_7a

    :cond_3c
    if-nez v3, :cond_5f

    if-eqz v0, :cond_5f

    const-string v7, "mspr:pro"

    invoke-static {p0, v7}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v6, :cond_5f

    sget-object v3, Lcom/google/android/gms/internal/ads/uy;->v5:Ljava/util/UUID;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/GA;->j6(Ljava/util/UUID;[B)[B

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/internal/ads/uy;->v5:Ljava/util/UUID;

    goto :goto_7a

    :cond_5f
    const-string v6, "widevine:license"

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7a

    const-string v4, "robustness_level"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_79

    const-string v6, "HW"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x1

    goto :goto_7a

    :cond_79
    const/4 v4, 0x0

    :cond_7a
    :goto_7a
    const-string v6, "ContentProtection"

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v3, :cond_8c

    new-instance p0, Lcom/google/android/gms/internal/ads/zzhp$zza;

    const-string v0, "video/mp4"

    invoke-direct {p0, v5, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzhp$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    return-object p0

    :cond_8c
    return-object v1
.end method

.method private static DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-object p2

    :cond_8
    return-object p0
.end method

.method private static FH(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/KC;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "S"

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "t"

    invoke-static {p0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "d"

    const-wide v4, -0x7fffffffffffffffL  # -4.9E-324

    invoke-static {p0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "r"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    :goto_2a
    add-int/lit8 v7, v5, 0x1

    if-ge v6, v7, :cond_3a

    new-instance v7, Lcom/google/android/gms/internal/ads/KC;

    invoke-direct {v7, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/KC;-><init>(JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v1, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_3a
    const-string v3, "SegmentTimeline"

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v0
.end method

.method private final Hw(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/BC;
    .registers 4

    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object p1

    return-object p1
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;F)F
    .registers 4

    const/4 v0, 0x0

    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_30

    sget-object v0, Lcom/google/android/gms/internal/ads/xC;->j6:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    int-to-float p1, p1

    if-nez v0, :cond_30

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    :cond_30
    return p1
.end method

.method private static j6(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    return p1

    :cond_4
    if-ne p1, v0, :cond_7

    return p0

    :cond_7
    if-ne p0, p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    return p0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 3

    const/4 v0, 0x0

    const-string v1, "contentType"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p0, 0x2

    return p0

    :cond_21
    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x3

    return p0

    :cond_2b
    const/4 p0, -0x1

    return p0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return p2

    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-wide p2

    :cond_8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/TD;->Hw(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;
    .registers 10

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2c

    :cond_28
    const-wide/16 p1, 0x0

    :cond_2a
    const-wide/16 v0, -0x1

    :goto_2c
    move-wide v3, p1

    move-wide v5, v0

    new-instance p0, Lcom/google/android/gms/internal/ads/BC;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object p0
.end method

.method private final j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/IC;)Lcom/google/android/gms/internal/ads/IC;
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v1, :cond_9

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/GC;->DW:J

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x1

    :goto_b
    const-string v4, "timescale"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v1, :cond_16

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/GC;->FH:J

    goto :goto_18

    :cond_16
    const-wide/16 v2, 0x0

    :goto_18
    const-string v4, "presentationTimeOffset"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v1, :cond_23

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/HC;->v5:J

    goto :goto_28

    :cond_23
    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    :goto_28
    const-string v4, "duration"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v1, :cond_33

    iget v2, v1, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    goto :goto_34

    :cond_33
    const/4 v2, 0x1

    :goto_34
    const-string v3, "startNumber"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_3d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "Initialization"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/xC;->Hw(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v4

    goto :goto_74

    :cond_4d
    const-string v5, "SegmentTimeline"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/xC;->FH(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    goto :goto_74

    :cond_5a
    const-string v5, "SegmentURL"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    if-nez v2, :cond_69

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_69
    const-string v5, "media"

    const-string v6, "mediaRange"

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_74
    :goto_74
    const-string v5, "SegmentList"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    if-eqz v1, :cond_8f

    if-eqz v4, :cond_81

    goto :goto_83

    :cond_81
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/GC;->j6:Lcom/google/android/gms/internal/ads/BC;

    :goto_83
    if-eqz v3, :cond_86

    goto :goto_88

    :cond_86
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    :goto_88
    if-eqz v2, :cond_8b

    goto :goto_8f

    :cond_8b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/IC;->VH:Ljava/util/List;

    move-object v15, v0

    goto :goto_90

    :cond_8f
    :goto_8f
    move-object v15, v2

    :goto_90
    move-object v14, v3

    move-object v6, v4

    new-instance v0, Lcom/google/android/gms/internal/ads/IC;

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/internal/ads/IC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private final j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/JC;)Lcom/google/android/gms/internal/ads/JC;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eqz v1, :cond_9

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/GC;->DW:J

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x1

    :goto_b
    const-string v4, "timescale"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v1, :cond_16

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/GC;->FH:J

    goto :goto_18

    :cond_16
    const-wide/16 v2, 0x0

    :goto_18
    const-string v4, "presentationTimeOffset"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    if-eqz v1, :cond_23

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/HC;->v5:J

    goto :goto_28

    :cond_23
    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    :goto_28
    const-string v4, "duration"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v1, :cond_33

    iget v2, v1, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    goto :goto_34

    :cond_33
    const/4 v2, 0x1

    :goto_34
    const-string v3, "startNumber"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/JC;->gn:Lcom/google/android/gms/internal/ads/OC;

    goto :goto_41

    :cond_40
    move-object v3, v2

    :goto_41
    const-string v4, "media"

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/OC;

    move-result-object v16

    if-eqz v1, :cond_4c

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/JC;->VH:Lcom/google/android/gms/internal/ads/OC;

    goto :goto_4d

    :cond_4c
    move-object v3, v2

    :goto_4d
    const-string v4, "initialization"

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/OC;

    move-result-object v15

    move-object v3, v2

    :cond_54
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v4, "Initialization"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/xC;->Hw(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v2

    goto :goto_70

    :cond_64
    const-string v4, "SegmentTimeline"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/xC;->FH(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    :cond_70
    :goto_70
    const-string v4, "SegmentTemplate"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    if-eqz v1, :cond_87

    if-eqz v2, :cond_7d

    goto :goto_7f

    :cond_7d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GC;->j6:Lcom/google/android/gms/internal/ads/BC;

    :goto_7f
    if-eqz v3, :cond_82

    goto :goto_87

    :cond_82
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    move-object v14, v0

    move-object v6, v2

    goto :goto_89

    :cond_87
    :goto_87
    move-object v6, v2

    move-object v14, v3

    :goto_89
    new-instance v0, Lcom/google/android/gms/internal/ads/JC;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/internal/ads/JC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;Lcom/google/android/gms/internal/ads/OC;Lcom/google/android/gms/internal/ads/OC;)V

    return-object v0
.end method

.method private final j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/LC;)Lcom/google/android/gms/internal/ads/LC;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_b

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/GC;->DW:J

    goto :goto_c

    :cond_b
    move-wide v4, v2

    :goto_c
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_19

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/GC;->FH:J

    goto :goto_1a

    :cond_19
    move-wide v6, v4

    :goto_1a
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_25

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/LC;->Hw:J

    goto :goto_26

    :cond_25
    move-wide v6, v4

    :goto_26
    if-eqz v1, :cond_2a

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/LC;->v5:J

    :cond_2a
    const-string v8, "indexRange"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4b

    const-string v4, "-"

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v7, v5

    add-long/2addr v7, v2

    move-wide v15, v7

    goto :goto_4d

    :cond_4b
    move-wide v15, v4

    move-wide v5, v6

    :goto_4d
    if-eqz v1, :cond_51

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/GC;->j6:Lcom/google/android/gms/internal/ads/BC;

    :cond_51
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/xC;->Hw(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v1

    move-object v13, v1

    :cond_61
    const-string v1, "SegmentBase"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    new-instance v0, Lcom/google/android/gms/internal/ads/LC;

    move-object v7, v0

    move-object v8, v13

    move-wide v13, v5

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/internal/ads/LC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJJJ)V

    return-object v0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/OC;
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/OC;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/OC;

    move-result-object p0

    return-object p0

    :cond_c
    return-object p2
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;
    .registers 6

    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-static {p0, v3, v2}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance p0, Lcom/google/android/gms/internal/ads/zC;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zC;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static j6(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/HD;->FH(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "application/cea-708"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0
.end method

.method private static v5(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 3

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_16

    const-string v0, "value"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    :cond_16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v1
.end method


# virtual methods
.method public final synthetic j6(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/xC;->DW(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/wC;

    move-result-object p1

    return-object p1
.end method
