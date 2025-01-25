.class public Lcom/aide/licensing/e;
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
.field public EQ:J

.field public FH:I

.field public Hw:J

.field public VH:Ljava/lang/String;

.field public Zo:Ljava/lang/String;

.field public gn:J

.field public tp:J

.field public u7:Ljava/lang/String;

.field public v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/licensing/e;

    const-wide v1, 0x5db45cc5c52fbcc8L  # 2.483057421892062E143

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x230cc1972968ffdL

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/e;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Ljava/lang/String;)Lcom/aide/licensing/e;
    .registers 10

    const/4 v0, 0x0

    const-wide v1, 0x547611856792a3b0L

    :try_start_6
    sget-boolean v3, Lcom/aide/licensing/e;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_137

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    if-ne v4, v3, :cond_1c

    move-object v4, p0

    goto :goto_2c

    :cond_1c
    :try_start_1c
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_27

    goto :goto_2c

    :cond_27
    add-int/2addr v3, v5

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_2c
    const-string v3, "|"

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v8, 0x6

    if-lt v4, v8, :cond_12f

    new-instance v4, Lcom/aide/licensing/e;

    invoke-direct {v4}, Lcom/aide/licensing/e;-><init>()V

    iput-object v7, v4, Lcom/aide/licensing/e;->u7:Ljava/lang/String;

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/aide/licensing/e;->FH:I

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/aide/licensing/e;->Hw:J

    const/4 v5, 0x2

    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/aide/licensing/e;->v5:Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v3, v6

    iput-object v6, v4, Lcom/aide/licensing/e;->Zo:Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v3, v6

    iput-object v6, v4, Lcom/aide/licensing/e;->VH:Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/aide/licensing/e;->gn:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timestamp: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v4, Lcom/aide/licensing/e;->gn:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/ue;->j6(Ljava/lang/String;)V

    iget v3, v4, Lcom/aide/licensing/e;->FH:I

    if-eqz v3, :cond_8e

    if-ne v3, v5, :cond_127

    :cond_8e
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_93
    .catchall {:try_start_1c .. :try_end_93} :catchall_137

    :try_start_93
    new-instance v5, Ljava/net/URI;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/aide/licensing/e;->u7:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/NameValuePair;

    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catch Ljava/net/URISyntaxException; {:try_start_93 .. :try_end_cc} :catch_128
    .catchall {:try_start_93 .. :try_end_cc} :catchall_137

    goto :goto_b5

    :cond_cd
    :try_start_cd
    const-string v5, "VT"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/aide/licensing/e;->tp:J

    const-string v5, "GT"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/aide/licensing/e;->EQ:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validity timestamp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v4, Lcom/aide/licensing/e;->tp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/ue;->j6(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "grace timestamp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v4, Lcom/aide/licensing/e;->EQ:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/ue;->j6(Ljava/lang/String;)V

    :cond_127
    return-object v4

    :catch_128
    move-exception v3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_12f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong number of fields."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_137
    .catchall {:try_start_cd .. :try_end_137} :catchall_137

    :catchall_137
    move-exception v3

    sget-boolean v4, Lcom/aide/licensing/e;->DW:Z

    if-eqz v4, :cond_13f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_13f
    goto :goto_141

    :goto_140
    throw v3

    :goto_141
    goto :goto_140
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v0, 0x17a98f82802c7e65L

    :try_start_5
    sget-boolean v2, Lcom/aide/licensing/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "|"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/aide/licensing/e;->FH:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/aide/licensing/e;->Hw:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/aide/licensing/e;->v5:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/aide/licensing/e;->Zo:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/aide/licensing/e;->VH:Ljava/lang/String;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    iget-wide v4, p0, Lcom/aide/licensing/e;->gn:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    return-object v0

    :catchall_40
    move-exception v2

    sget-boolean v3, Lcom/aide/licensing/e;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    throw v2
.end method
