.class public final Lcom/google/android/gms/internal/ads/xC;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lcom/google/android/gms/internal/ads/AD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/gms/internal/ads/AD",
        "<",
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
    .registers 5

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xC;->Hw:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xC;->v5:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method private final DW(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/wC;
    .registers 88

    const-string v24, "MPD"

    const-string v42, "id"

    const-string v23, "BaseURL"

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/xC;->v5:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v67

    const/4 v4, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface/range {v67 .. v67}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_52

    const-string v4, "MPD"

    invoke-interface/range {v67 .. v67}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    const/4 v4, 0x0

    const-string v5, "availabilityStartTime"

    move-object/from16 v0, v67

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const-string v4, "mediaPresentationDuration"

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, v67

    invoke-static {v0, v4, v8, v9}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v68

    const-string v4, "minBufferTime"

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, v67

    invoke-static {v0, v4, v8, v9}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v4, 0x0

    const-string v7, "type"

    move-object/from16 v0, v67

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v7, "dynamic"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_2

    const-string v4, "minimumUpdatePeriod"

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, v67

    invoke-static {v0, v4, v12, v13}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    :goto_2
    if-eqz v11, :cond_3

    const-string v4, "timeShiftBufferDepth"

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, v67

    invoke-static {v0, v4, v14, v15}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    :goto_3
    if-eqz v11, :cond_4

    const-string v4, "suggestedPresentationDelay"

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, v67

    move-wide/from16 v1, v16

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    :goto_4
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_5

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    const/4 v8, 0x0

    const/16 v41, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-wide/from16 v64, v18

    move/from16 v63, v4

    move/from16 v66, v7

    move-object/from16 v22, p0

    :goto_6
    invoke-interface/range {v67 .. v67}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v0, v67

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v66, :cond_4c

    move-object/from16 v0, v67

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v66, 0x1

    move-object/from16 v18, v8

    move-object/from16 v19, v41

    move/from16 v25, v63

    move/from16 v28, v66

    :goto_7
    move-object/from16 v0, v67

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v68, v22

    if-nez v4, :cond_4e

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v64, v22

    if-eqz v4, :cond_4d

    move-wide/from16 v7, v64

    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    new-instance v4, Lcom/google/android/gms/internal/ads/wC;

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/internal/ads/wC;-><init>(JJJZJJJLcom/google/android/gms/internal/ads/PC;Landroid/net/Uri;Ljava/util/List;)V

    return-object v4

    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/TD;->v5(Ljava/lang/String;)J

    move-result-wide v5

    goto/16 :goto_0

    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_2
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2

    :cond_3
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_3

    :cond_4
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4

    :cond_5
    const-wide/16 v18, 0x0

    goto :goto_5

    :cond_6
    const-string v4, "UTCTiming"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    const-string v18, "value"

    const-string v19, "schemeIdUri"

    if-eqz v4, :cond_7

    :try_start_1
    new-instance v4, Lcom/google/android/gms/internal/ads/PC;

    const/4 v7, 0x0

    const-string v8, "schemeIdUri"

    move-object/from16 v0, v67

    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v18, "value"

    move-object/from16 v0, v67

    move-object/from16 v1, v18

    invoke-interface {v0, v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/google/android/gms/internal/ads/PC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v41

    :goto_9
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v25, v63

    move/from16 v28, v66

    goto :goto_7

    :cond_7
    const-string v4, "Location"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v67 .. v67}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v4, v8

    goto :goto_9

    :cond_8
    const-string v4, "Period"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    if-nez v63, :cond_4c

    const/4 v4, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, v42

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    const-string v4, "start"

    move-object/from16 v0, v67

    move-wide/from16 v1, v64

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v72

    const-string v4, "duration"

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, v67

    move-wide/from16 v1, v26

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v74

    new-instance v71, Ljava/util/ArrayList;

    invoke-direct/range {v71 .. v71}, Ljava/util/ArrayList;-><init>()V

    const/16 v60, 0x0

    const/16 v58, 0x0

    move-object/from16 v62, v24

    move-object/from16 v61, v21

    move-object/from16 v59, v21

    :goto_a
    invoke-interface/range {v67 .. v67}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v0, v67

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v60, :cond_9

    move-object/from16 v0, v67

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    :goto_b
    const-string v21, "Period"

    move-object/from16 v0, v67

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4b

    new-instance v4, Lcom/google/android/gms/internal/ads/AC;

    move-object/from16 v0, v70

    move-wide/from16 v1, v72

    move-object/from16 v3, v71

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/AC;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/AC;

    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/AC;->DW:J

    move-wide/from16 v18, v0

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v18, v18, v24

    if-nez v18, :cond_49

    if-eqz v11, :cond_48

    const/16 v63, 0x1

    move-object/from16 v18, v8

    move-object/from16 v19, v41

    move-object/from16 v21, v61

    move-object/from16 v24, v62

    move/from16 v25, v63

    move/from16 v28, v66

    goto/16 :goto_7

    :cond_9
    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v21, v42

    :goto_c
    move-object/from16 v24, v58

    move-object/from16 v19, v7

    move-object/from16 v18, v4

    move-object/from16 v42, v21

    :goto_d
    move-object/from16 v58, v24

    move-object/from16 v4, v59

    move/from16 v7, v60

    goto :goto_b

    :cond_a
    const-string v4, "AdaptationSet"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    const/4 v4, -0x1

    move-object/from16 v0, v67

    move-object/from16 v1, v42

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v76

    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v45

    const/4 v4, 0x0

    const-string v7, "mimeType"

    move-object/from16 v0, v67

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    const/4 v4, 0x0

    const-string v7, "codecs"

    move-object/from16 v0, v67

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    const-string v4, "width"

    const/4 v7, -0x1

    move-object/from16 v0, v67

    invoke-static {v0, v4, v7}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v55

    const-string v4, "height"

    const/4 v7, -0x1

    move-object/from16 v0, v67

    invoke-static {v0, v4, v7}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v36

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v79

    const-string v4, "audioSamplingRate"

    const/4 v7, -0x1

    move-object/from16 v0, v67

    invoke-static {v0, v4, v7}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v54

    const-string v57, "SegmentTemplate"

    const/4 v4, 0x0

    :try_start_2
    const-string v7, "lang"

    move-object/from16 v0, v67

    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    new-instance v81, Ljava/util/ArrayList;

    invoke-direct/range {v81 .. v81}, Ljava/util/ArrayList;-><init>()V

    new-instance v82, Ljava/util/ArrayList;

    invoke-direct/range {v82 .. v82}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v52, "SegmentList"

    :try_start_3
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v32, "SegmentBase"

    const/16 v44, 0x0

    const/16 v30, 0x0

    const/16 v46, -0x1

    move-object/from16 v7, v58

    move-object/from16 v33, v23

    move-object/from16 v43, v59

    :goto_e
    :try_start_5
    invoke-interface/range {v67 .. v67}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v0, v67

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v44, :cond_c

    move-object/from16 v0, v67

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v4

    const/16 v21, 0x1

    move/from16 v22, v45

    move/from16 v23, v46

    :goto_f
    move-object/from16 v24, v32

    move-object/from16 v43, v4

    move-object/from16 v25, v52

    move/from16 v26, v54

    move/from16 v44, v21

    move/from16 v27, v55

    move/from16 v28, v36

    move/from16 v45, v22

    move/from16 v46, v23

    move-object/from16 v29, v57

    :goto_10
    :try_start_6
    const-string v4, "AdaptationSet"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    new-instance v36, Ljava/util/ArrayList;

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v7, v4

    :goto_11
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_43

    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/yC;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/yC;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v26, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/yC;->Hw:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b

    new-instance v22, Lcom/google/android/gms/internal/ads/zzhp;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v26

    :cond_b
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/yC;->v5:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/yC;->DW:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/yC;->FH:Lcom/google/android/gms/internal/ads/GC;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/LC;

    if-eqz v4, :cond_41

    new-instance v22, Lcom/google/android/gms/internal/ads/FC;

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    check-cast v28, Lcom/google/android/gms/internal/ads/LC;

    const/16 v30, 0x0

    const-wide/16 v31, -0x1

    invoke-direct/range {v22 .. v32}, Lcom/google/android/gms/internal/ads/FC;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/LC;Ljava/util/List;Ljava/lang/String;J)V

    :goto_12
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_11

    :cond_c
    move/from16 v22, v45

    move/from16 v23, v46

    :goto_13
    move-object/from16 v4, v43

    move/from16 v21, v44

    goto/16 :goto_f

    :cond_d
    :try_start_7
    const-string v4, "ContentProtection"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/zzhp$zza;

    move-result-object v4

    if-eqz v4, :cond_e

    move-object/from16 v0, v80

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_14
    move-object/from16 v4, v43

    move/from16 v21, v44

    move/from16 v22, v45

    move/from16 v23, v46

    goto/16 :goto_f

    :cond_f
    const-string v4, "ContentComponent"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    const-string v21, "lang"

    move-object/from16 v0, v67

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v40, :cond_11

    move-object/from16 v40, v4

    :cond_10
    :goto_15
    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    move/from16 v0, v45

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(II)I

    move-result v45

    move/from16 v22, v45

    move/from16 v23, v46

    goto :goto_13

    :cond_11
    if-eqz v4, :cond_10

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_15

    :catch_0
    move-exception v4

    :goto_16
    new-instance v5, Lcom/google/android/gms/internal/ads/My;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_12
    :try_start_8
    const-string v4, "Role"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v21, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    :cond_13
    invoke-interface/range {v67 .. v67}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v22, "Role"

    move-object/from16 v0, v67

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    const-string v22, "urn:mpeg:dash:role:2011"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "main"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    :goto_17
    or-int v30, v30, v4

    :goto_18
    move/from16 v22, v45

    move/from16 v23, v46

    goto/16 :goto_13

    :cond_14
    const/4 v4, 0x0

    goto :goto_17

    :cond_15
    const-string v4, "AudioChannelConfiguration"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/xC;->v5(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v46

    goto :goto_18

    :cond_16
    const-string v4, "Accessibility"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "Accessibility"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_17
    const-string v4, "SupplementalProperty"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "SupplementalProperty"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_18
    const-string v4, "Representation"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v4

    const-string v38, "InbandEventStream"

    if-eqz v4, :cond_3c

    const/4 v4, 0x0

    :try_start_9
    move-object/from16 v0, v67

    move-object/from16 v1, v42

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v4, "bandwidth"

    const/16 v22, -0x1

    move-object/from16 v0, v67

    move/from16 v1, v22

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v25

    const-string v4, "mimeType"

    move-object/from16 v0, v67

    move-object/from16 v1, v77

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "codecs"

    move-object/from16 v0, v67

    move-object/from16 v1, v78

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v4, "width"

    move-object/from16 v0, v67

    move/from16 v1, v55

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v26

    const-string v4, "height"

    move-object/from16 v0, v67

    move/from16 v1, v36

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v27

    move-object/from16 v0, v67

    move/from16 v1, v79

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v28

    const-string v4, "audioSamplingRate"

    move-object/from16 v0, v67

    move/from16 v1, v54

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v37

    new-instance v83, Ljava/util/ArrayList;

    invoke-direct/range {v83 .. v83}, Ljava/util/ArrayList;-><init>()V

    new-instance v84, Ljava/util/ArrayList;

    invoke-direct/range {v84 .. v84}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    move-object/from16 v51, v35

    move-object/from16 v49, v32

    move-object/from16 v50, v34

    move-object/from16 v53, v33

    move-object v4, v7

    move/from16 v56, v36

    move/from16 v29, v46

    move-object/from16 v31, v43

    :goto_19
    invoke-interface/range {v67 .. v67}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v0, v67

    move-object/from16 v1, v53

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1a

    if-nez v23, :cond_1f

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v23, 0x1

    :goto_1a
    move-object/from16 v47, v31

    move-object/from16 v48, v4

    move/from16 v36, v29

    :goto_1b
    const-string v4, "Representation"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v4

    if-eqz v4, :cond_23

    if-eqz v24, :cond_22

    :try_start_a
    const-string v4, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    const/4 v4, 0x0

    move/from16 v23, v4

    :goto_1c
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_22

    aget-object v4, v29, v23

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HD;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1

    move-result v32

    if-eqz v32, :cond_21

    :cond_19
    move-object/from16 v23, v4

    :goto_1d
    if-eqz v23, :cond_36

    :try_start_b
    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0

    move-result v4

    if-eqz v4, :cond_2b

    const/16 v29, 0x0

    :try_start_c
    invoke-static/range {v21 .. v30}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v22

    :goto_1e
    if-eqz v48, :cond_37

    move-object/from16 v24, v48

    :goto_1f
    :try_start_d
    new-instance v21, Lcom/google/android/gms/internal/ads/yC;

    move-object/from16 v23, v47

    move-object/from16 v25, v83

    move-object/from16 v26, v84

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/yC;-><init>(Lcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/GC;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yC;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3a

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_38

    const/4 v4, 0x2

    :goto_20
    move/from16 v0, v45

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(II)I

    move-result v45

    move-object/from16 v0, v51

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v49

    move-object/from16 v34, v50

    move-object/from16 v35, v51

    move-object/from16 v25, v52

    move-object/from16 v33, v53

    move/from16 v26, v54

    move/from16 v27, v55

    move/from16 v28, v56

    move-object/from16 v29, v57

    goto/16 :goto_10

    :cond_1a
    const-string v32, "AudioChannelConfiguration"

    move-object/from16 v0, v67

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1b

    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/xC;->v5(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v29

    goto/16 :goto_1a

    :cond_1b
    move-object/from16 v0, v67

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_1c

    check-cast v4, Lcom/google/android/gms/internal/ads/LC;
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0

    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/LC;)Lcom/google/android/gms/internal/ads/LC;
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v4

    move-object/from16 v47, v31

    move-object/from16 v48, v4

    move/from16 v36, v29

    goto/16 :goto_1b

    :cond_1c
    :try_start_f
    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0

    move-result v32

    if-eqz v32, :cond_1d

    :try_start_10
    check-cast v4, Lcom/google/android/gms/internal/ads/IC;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/IC;)Lcom/google/android/gms/internal/ads/IC;
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1

    move-result-object v4

    :goto_21
    move-object/from16 v47, v31

    move-object/from16 v48, v4

    move/from16 v36, v29

    goto/16 :goto_1b

    :cond_1d
    :try_start_11
    move-object/from16 v0, v67

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0

    move-result v32

    if-eqz v32, :cond_1e

    :try_start_12
    check-cast v4, Lcom/google/android/gms/internal/ads/JC;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/JC;)Lcom/google/android/gms/internal/ads/JC;
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_1

    move-result-object v4

    goto :goto_21

    :cond_1e
    :try_start_13
    const-string v32, "ContentProtection"

    move-object/from16 v0, v67

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_0

    move-result v32

    if-eqz v32, :cond_20

    :try_start_14
    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/zzhp$zza;

    move-result-object v32

    if-eqz v32, :cond_1f

    move-object/from16 v0, v83

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_1

    :cond_1f
    :goto_22
    move-object/from16 v47, v31

    move-object/from16 v48, v4

    move/from16 v36, v29

    goto/16 :goto_1b

    :cond_20
    :try_start_15
    move-object/from16 v0, v67

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_0

    move-result v32

    if-eqz v32, :cond_1f

    :try_start_16
    move-object/from16 v0, v67

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;

    move-result-object v32

    move-object/from16 v0, v84

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_1

    goto :goto_22

    :catch_1
    move-exception v4

    goto/16 :goto_16

    :cond_21
    add-int/lit8 v4, v23, 0x1

    move/from16 v23, v4

    goto/16 :goto_1c

    :cond_22
    const/16 v23, 0x0

    goto/16 :goto_1d

    :cond_23
    :try_start_17
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_0

    move-result v4

    if-eqz v4, :cond_25

    if-eqz v24, :cond_22

    :try_start_18
    const-string v4, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    const/4 v4, 0x0

    move/from16 v23, v4

    :goto_23
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_22

    aget-object v4, v29, v23

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HD;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HD;->DW(Ljava/lang/String;)Z
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_1

    move-result v32

    if-nez v32, :cond_19

    :cond_24
    add-int/lit8 v4, v23, 0x1

    move/from16 v23, v4

    goto :goto_23

    :cond_25
    :try_start_19
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/xC;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v23, v22

    goto/16 :goto_1d

    :cond_26
    const-string v4, "application/mp4"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_0

    move-result v4

    if-eqz v4, :cond_28

    :try_start_1a
    const-string v4, "stpp"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_1

    move-result v4

    if-eqz v4, :cond_27

    const-string v23, "application/ttml+xml"

    goto/16 :goto_1d

    :cond_27
    :try_start_1b
    const-string v4, "wvtt"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_1

    move-result v4

    if-eqz v4, :cond_22

    const-string v23, "application/x-mp4-vtt"

    goto/16 :goto_1d

    :cond_28
    :try_start_1c
    const-string v4, "application/x-rawcc"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_0

    move-result v4

    if-eqz v4, :cond_22

    if-eqz v24, :cond_22

    :try_start_1d
    const-string v4, "cea708"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_1

    move-result v4

    if-eqz v4, :cond_29

    const-string v23, "application/cea-708"

    goto/16 :goto_1d

    :cond_29
    :try_start_1e
    const-string v4, "eia608"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "cea608"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_1

    move-result v4

    if-eqz v4, :cond_22

    :cond_2a
    const-string v23, "application/cea-608"

    goto/16 :goto_1d

    :cond_2b
    :try_start_1f
    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_0

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v38, 0x0

    move-object/from16 v31, v21

    move-object/from16 v32, v22

    move-object/from16 v33, v23

    move-object/from16 v34, v24

    move/from16 v35, v25

    move/from16 v39, v30

    :try_start_20
    invoke-static/range {v31 .. v40}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_1

    move-result-object v22

    goto/16 :goto_1e

    :cond_2c
    :try_start_21
    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/xC;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v4, "application/cea-608"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x0

    move/from16 v26, v4

    :goto_24
    invoke-interface/range {v82 .. v82}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_30

    move-object/from16 v0, v82

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zC;

    const-string v27, "urn:scte:dash:cc:cea-608:2015"

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2e

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e

    sget-object v27, Lcom/google/android/gms/internal/ads/xC;->DW:Ljava/util/regex/Pattern;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->matches()Z

    move-result v28

    if-eqz v28, :cond_2d

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_25
    move/from16 v28, v4

    :goto_26
    move/from16 v26, v30

    move-object/from16 v27, v40

    invoke-static/range {v21 .. v28}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v22

    goto/16 :goto_1e

    :cond_2d
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_2f

    const-string v27, "Unable to parse CEA-608 channel number from: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_27
    const-string v27, "MpdParser"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    add-int/lit8 v4, v26, 0x1

    move/from16 v26, v4

    goto :goto_24

    :cond_2f
    new-instance v4, Ljava/lang/String;

    const-string v27, "Unable to parse CEA-608 channel number from: "

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :cond_30
    const/4 v4, -0x1

    goto :goto_25

    :cond_31
    const-string v4, "application/cea-708"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x0

    move/from16 v26, v4

    :goto_28
    invoke-interface/range {v82 .. v82}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_30

    move-object/from16 v0, v82

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zC;

    const-string v27, "urn:scte:dash:cc:cea-708:2015"

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zC;->j6:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_33

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_33

    sget-object v27, Lcom/google/android/gms/internal/ads/xC;->FH:Ljava/util/regex/Pattern;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->matches()Z

    move-result v28

    if-eqz v28, :cond_32

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_25

    :cond_32
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zC;->DW:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_34

    const-string v27, "Unable to parse CEA-708 service block number from: "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_29
    const-string v27, "MpdParser"

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    add-int/lit8 v4, v26, 0x1

    move/from16 v26, v4

    goto :goto_28

    :cond_34
    new-instance v4, Ljava/lang/String;

    const-string v27, "Unable to parse CEA-708 service block number from: "

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :cond_35
    const/16 v28, -0x1

    goto/16 :goto_26

    :cond_36
    move/from16 v26, v30

    move-object/from16 v27, v40

    invoke-static/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v22

    goto/16 :goto_1e

    :cond_37
    new-instance v24, Lcom/google/android/gms/internal/ads/LC;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/LC;-><init>()V

    goto/16 :goto_1f

    :cond_38
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_39

    const/4 v4, 0x1

    goto/16 :goto_20

    :cond_39
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v4, 0x3

    goto/16 :goto_20

    :cond_3a
    const/4 v4, -0x1

    goto/16 :goto_20

    :cond_3b
    move-object/from16 v4, v48

    move/from16 v29, v36

    move-object/from16 v31, v47

    goto/16 :goto_19

    :cond_3c
    move-object/from16 v0, v67

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/LC;

    move-object v4, v0
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_0

    :try_start_22
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/LC;)Lcom/google/android/gms/internal/ads/LC;

    move-result-object v7

    move-object/from16 v24, v32

    move-object/from16 v25, v52

    move/from16 v26, v54

    move/from16 v27, v55

    move/from16 v28, v36

    move-object/from16 v29, v57

    goto/16 :goto_10

    :cond_3d
    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    check-cast v7, Lcom/google/android/gms/internal/ads/IC;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/IC;)Lcom/google/android/gms/internal/ads/IC;

    move-result-object v7

    move-object/from16 v24, v32

    move-object/from16 v25, v52

    move/from16 v26, v54

    move/from16 v27, v55

    move/from16 v28, v36

    move-object/from16 v29, v57

    goto/16 :goto_10

    :cond_3e
    move-object/from16 v0, v67

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    check-cast v7, Lcom/google/android/gms/internal/ads/JC;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/JC;)Lcom/google/android/gms/internal/ads/JC;

    move-result-object v7

    move-object/from16 v24, v32

    move-object/from16 v25, v52

    move/from16 v26, v54

    move/from16 v27, v55

    move/from16 v28, v36

    move-object/from16 v29, v57

    goto/16 :goto_10

    :cond_3f
    const-string v4, "InbandEventStream"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    const-string v4, "InbandEventStream"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v32

    move-object/from16 v25, v52

    move/from16 v26, v54

    move/from16 v27, v55

    move/from16 v28, v36

    move-object/from16 v29, v57

    goto/16 :goto_10

    :cond_40
    invoke-static/range {v67 .. v67}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-object/from16 v24, v32

    move-object/from16 v25, v52

    move/from16 v26, v54

    move/from16 v27, v55

    move/from16 v28, v36

    move-object/from16 v29, v57

    goto/16 :goto_10

    :cond_41
    move-object/from16 v0, v28

    instance-of v4, v0, Lcom/google/android/gms/internal/ads/HC;

    if-eqz v4, :cond_42

    new-instance v22, Lcom/google/android/gms/internal/ads/EC;

    const/16 v23, 0x0

    const-wide/16 v24, -0x1

    check-cast v28, Lcom/google/android/gms/internal/ads/HC;

    invoke-direct/range {v22 .. v29}, Lcom/google/android/gms/internal/ads/EC;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/HC;Ljava/util/List;)V

    goto/16 :goto_12

    :catch_2
    move-exception v4

    goto/16 :goto_16

    :cond_42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_43
    new-instance v21, Lcom/google/android/gms/internal/ads/vC;

    move/from16 v22, v76

    move/from16 v23, v45

    move-object/from16 v24, v36

    move-object/from16 v25, v82

    move-object/from16 v26, v34

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/vC;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v71

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v21, v42

    move-object/from16 v22, p0

    move-object/from16 v23, v33

    goto/16 :goto_c

    :cond_44
    move-object/from16 v32, v24

    move-object/from16 v52, v25

    move/from16 v54, v26

    move/from16 v55, v27

    move/from16 v36, v28

    move-object/from16 v57, v29

    goto/16 :goto_e

    :cond_45
    const-string v4, "SegmentBase"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/LC;)Lcom/google/android/gms/internal/ads/LC;

    move-result-object v4

    :goto_2a
    move-object/from16 v24, v4

    goto/16 :goto_d

    :cond_46
    const-string v4, "SegmentList"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/IC;)Lcom/google/android/gms/internal/ads/IC;

    move-result-object v4

    goto :goto_2a

    :cond_47
    const-string v4, "SegmentTemplate"

    move-object/from16 v0, v67

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v67

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/JC;)Lcom/google/android/gms/internal/ads/JC;

    move-result-object v4

    goto :goto_2a

    :cond_48
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unable to determine start of period "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_49
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v18, v24

    if-nez v7, :cond_4a

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2b
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v61

    move-object/from16 v7, v62

    move-wide/from16 v26, v18

    :goto_2c
    move-object/from16 v18, v8

    move-object/from16 v19, v41

    move-object/from16 v21, v4

    move-object/from16 v24, v7

    move-wide/from16 v64, v26

    move/from16 v25, v63

    move/from16 v28, v66

    goto/16 :goto_7

    :cond_4a
    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/AC;->DW:J

    move-wide/from16 v24, v0

    add-long v18, v18, v24

    goto :goto_2b

    :cond_4b
    move-object/from16 v59, v4

    move/from16 v60, v7

    goto/16 :goto_a

    :cond_4c
    move-object/from16 v4, v21

    move-object/from16 v7, v24

    move-wide/from16 v26, v64

    goto :goto_2c

    :cond_4d
    if-eqz v11, :cond_4f

    :cond_4e
    move-wide/from16 v7, v68

    goto/16 :goto_8

    :cond_4f
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "Unable to determine duration of static manifest."

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_50
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "No periods found."

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_51
    move-object/from16 v8, v18

    move-object/from16 v41, v19

    move/from16 v63, v25

    move/from16 v66, v28

    goto/16 :goto_6

    :cond_52
    new-instance v4, Lcom/google/android/gms/internal/ads/My;

    const-string v5, "inputStream does not contain a valid media presentation description"

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_2

    :cond_53
    move-object/from16 v24, v58

    goto/16 :goto_d
.end method

.method private static DW(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/zzhp$zza;
    .registers 9

    const/4 v7, 0x4

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    const-string v2, "schemeIdUri"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object v0, v1

    move-object v2, v1

    move v3, v4

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    if-nez v0, :cond_3

    const-string v6, "cenc:pssh"

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v7, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/GA;->j6([B)Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "MpdParser"

    const-string v6, "Skipping malformed cenc:pssh data"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_1
    :goto_0
    const-string v6, "ContentProtection"

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhp$zza;

    const-string v4, "video/mp4"

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzhp$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    :cond_2
    return-object v1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v5, :cond_4

    const-string v6, "mspr:pro"

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-ne v6, v7, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/uy;->v5:Ljava/util/UUID;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/GA;->j6(Ljava/util/UUID;[B)[B

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/uy;->v5:Ljava/util/UUID;

    goto :goto_0

    :cond_4
    const-string v6, "widevine:license"

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v3, "robustness_level"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v6, "HW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_0
.end method

.method private static DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/SD;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private static FH(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/KC;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "S"

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "t"

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "d"

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v2, v6, v7}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "r"

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    move v2, v3

    :goto_0
    add-int/lit8 v8, v5, 0x1

    if-ge v2, v8, :cond_1

    new-instance v8, Lcom/google/android/gms/internal/ads/KC;

    invoke-direct {v8, v0, v1, v6, v7}, Lcom/google/android/gms/internal/ads/KC;-><init>(JJ)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "SegmentTimeline"

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v4
.end method

.method private final Hw(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/BC;
    .registers 4

    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;F)F
    .registers 5

    const/4 v0, 0x0

    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/xC;->j6:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    div-float p1, v1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    int-to-float p1, v1

    goto :goto_0
.end method

.method private static j6(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    move p0, p1

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-eq p1, v0, :cond_0

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 3

    const/4 v0, 0x0

    const-string v1, "contentType"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Hw(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;
    .registers 11

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/BC;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/BC;-><init>(Ljava/lang/String;JJ)V

    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private final j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/IC;)Lcom/google/android/gms/internal/ads/IC;
    .registers 15

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/GC;->DW:J

    :goto_0
    const-string v2, "timescale"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/GC;->FH:J

    :goto_1
    const-string v4, "presentationTimeOffset"

    invoke-static {p1, v4, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/HC;->v5:J

    :goto_2
    const-string v6, "duration"

    invoke-static {p1, v6, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz p2, :cond_3

    iget v0, p2, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    :goto_3
    const-string v1, "startNumber"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    move-object v0, v9

    move-object v1, v9

    move-object v10, v9

    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "Initialization"

    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xC;->Hw(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v0

    move-object v9, v1

    :goto_5
    const-string v1, "SegmentList"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_a

    if-eqz v0, :cond_7

    move-object v1, v0

    :goto_6
    if-eqz v9, :cond_8

    :goto_7
    if-eqz v10, :cond_9

    :goto_8
    new-instance v0, Lcom/google/android/gms/internal/ads/IC;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/IC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const-string v9, "SegmentTimeline"

    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xC;->FH(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_5

    :cond_5
    const-string v9, "SegmentURL"

    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-nez v10, :cond_6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    const-string v9, "media"

    const-string v11, "mediaRange"

    invoke-static {p1, v9, v11}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v1

    goto :goto_5

    :cond_7
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/GC;->j6:Lcom/google/android/gms/internal/ads/BC;

    goto :goto_6

    :cond_8
    iget-object v9, p2, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    goto :goto_7

    :cond_9
    iget-object v10, p2, Lcom/google/android/gms/internal/ads/IC;->VH:Ljava/util/List;

    goto :goto_8

    :cond_a
    move-object v1, v0

    goto :goto_8

    :cond_b
    move-object v9, v1

    goto :goto_5

    :cond_c
    move-object v1, v9

    goto :goto_4
.end method

.method private final j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/JC;)Lcom/google/android/gms/internal/ads/JC;
    .registers 15

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/GC;->DW:J

    :goto_0
    const-string v2, "timescale"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/GC;->FH:J

    :goto_1
    const-string v4, "presentationTimeOffset"

    invoke-static {p1, v4, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/HC;->v5:J

    :goto_2
    const-string v6, "duration"

    invoke-static {p1, v6, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz p2, :cond_3

    iget v0, p2, Lcom/google/android/gms/internal/ads/HC;->Hw:I

    :goto_3
    const-string v1, "startNumber"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/JC;->gn:Lcom/google/android/gms/internal/ads/OC;

    :goto_4
    const-string v1, "media"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/OC;

    move-result-object v11

    if-eqz p2, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/JC;->VH:Lcom/google/android/gms/internal/ads/OC;

    :goto_5
    const-string v1, "initialization"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/OC;

    move-result-object v10

    move-object v0, v9

    move-object v1, v9

    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "Initialization"

    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xC;->Hw(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v0

    move-object v9, v1

    :goto_7
    const-string v1, "SegmentTemplate"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p2, :cond_9

    if-eqz v0, :cond_7

    move-object v1, v0

    :goto_8
    if-eqz v9, :cond_8

    :goto_9
    new-instance v0, Lcom/google/android/gms/internal/ads/JC;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/JC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJIJLjava/util/List;Lcom/google/android/gms/internal/ads/OC;Lcom/google/android/gms/internal/ads/OC;)V

    return-object v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    move-object v0, v9

    goto :goto_4

    :cond_5
    move-object v0, v9

    goto :goto_5

    :cond_6
    const-string v9, "SegmentTimeline"

    invoke-static {p1, v9}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xC;->FH(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    goto :goto_7

    :cond_7
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/GC;->j6:Lcom/google/android/gms/internal/ads/BC;

    goto :goto_8

    :cond_8
    iget-object v9, p2, Lcom/google/android/gms/internal/ads/HC;->Zo:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object v1, v0

    goto :goto_9

    :cond_a
    move-object v9, v1

    goto :goto_7

    :cond_b
    move-object v1, v9

    goto :goto_6
.end method

.method private final j6(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/gms/internal/ads/LC;)Lcom/google/android/gms/internal/ads/LC;
    .registers 15

    const-wide/16 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    if-eqz p2, :cond_3

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/GC;->DW:J

    :goto_0
    const-string v2, "timescale"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz p2, :cond_4

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/GC;->FH:J

    :goto_1
    const-string v4, "presentationTimeOffset"

    invoke-static {p1, v4, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz p2, :cond_5

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/LC;->Hw:J

    :goto_2
    if-eqz p2, :cond_0

    iget-wide v8, p2, Lcom/google/android/gms/internal/ads/LC;->v5:J

    :cond_0
    const-string v11, "indexRange"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const-string v0, "-"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v8, v0

    add-long/2addr v8, v6

    move-wide v6, v0

    :goto_3
    if-eqz p2, :cond_6

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/GC;->j6:Lcom/google/android/gms/internal/ads/BC;

    :cond_1
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "Initialization"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/VD;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xC;->Hw(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/gms/internal/ads/BC;

    move-result-object v1

    :cond_2
    const-string v0, "SegmentBase"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/LC;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/LC;-><init>(Lcom/google/android/gms/internal/ads/BC;JJJJ)V

    return-object v0

    :cond_3
    move-wide v0, v6

    goto :goto_0

    :cond_4
    move-wide v0, v8

    goto :goto_1

    :cond_5
    move-wide v0, v8

    goto :goto_2

    :cond_6
    move-object v1, v10

    goto :goto_4

    :cond_7
    move-wide v6, v0

    goto :goto_3
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/OC;
    .registers 4

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/OC;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/OC;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private static j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zC;
    .registers 6

    const/4 v3, 0x0

    const-string v0, "schemeIdUri"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-static {p0, v1, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zC;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zC;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static j6(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/HD;->FH(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/x-mp4-vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/cea-708"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/cea-608"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static v5(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5

    const/4 v0, -0x1

    const-string v1, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    const-string v2, "schemeIdUri"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/xC;->DW(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/xC;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "AudioChannelConfiguration"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/VD;->j6(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method


# virtual methods
.method public final synthetic j6(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/xC;->DW(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/wC;

    move-result-object v0

    return-object v0
.end method
