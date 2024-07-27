.class Lcom/aide/engine/c$b$g;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/fb;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
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
.field final FH:Lcom/aide/engine/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x16c8527c6dcb1504L

    const-class v0, Lcom/aide/engine/c$b$g;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x7793860677919f1L
    .end annotation

    const-wide v4, -0x1df2cf830b73f385L    # -2.1011299888660763E164

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1df2cf830b73f385L    # -2.1011299888660763E164

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/c$b$g;->FH:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    const-wide v2, -0x317327bb1ce2a930L    # -2.4884937606950444E70

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x317327bb1ce2a930L    # -2.4884937606950444E70

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$g;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$g;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public j6(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x344f80e0f46dada4L
    .end annotation

    const/4 v6, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x5dc1b865ee6812e0L    # 4.321745119590022E143

    invoke-static {v2, v3, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$g;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ye(Lcom/aide/engine/c;)Lcom/aide/engine/q;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$g;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ye(Lcom/aide/engine/c;)Lcom/aide/engine/q;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aide/engine/q;->j6(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/io/PushbackInputStream;

    const/4 v0, 0x4

    invoke-direct {v3, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x4

    new-array v4, v0, [B

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_2

    rsub-int/lit8 v0, v2, 0x4

    invoke-virtual {v3, v4, v2, v0}, Ljava/io/PushbackInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_6

    :cond_2
    const/4 v0, 0x0

    if-ne v2, v6, :cond_3

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_7

    aget-byte v5, v4, v7

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_7

    aget-byte v5, v4, v8

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_7

    aget-byte v5, v4, v9

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xff

    if-ne v5, v6, :cond_7

    const-string v0, "UTF-32BE"

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    if-lt v2, v9, :cond_4

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xef

    if-ne v5, v6, :cond_4

    aget-byte v5, v4, v7

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xbb

    if-ne v5, v6, :cond_4

    aget-byte v5, v4, v8

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xbf

    if-ne v5, v6, :cond_4

    :try_start_1
    invoke-static {}, Lcom/aide/engine/c;->j6()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "UTF8"

    :goto_3
    const/4 v5, 0x3

    add-int/lit8 v6, v2, -0x3

    :try_start_2
    invoke-virtual {v3, v4, v5, v6}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    if-nez v0, :cond_b

    if-lt v2, v8, :cond_b

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_a

    aget-byte v5, v4, v7

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xff

    if-ne v5, v6, :cond_a

    :try_start_3
    invoke-static {}, Lcom/aide/engine/c;->j6()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Cp1201"

    :goto_4
    move-object v1, v0

    :goto_5
    if-nez v1, :cond_e

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v3, v4, v0, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    if-eqz p2, :cond_d

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$g;->DW:Z

    if-eqz v0, :cond_5

    const-wide v2, 0x5dc1b865ee6812e0L    # 4.321745119590022E143

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    add-int/2addr v0, v2

    move v2, v0

    goto/16 :goto_1

    :cond_7
    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xff

    if-ne v5, v6, :cond_3

    aget-byte v5, v4, v7

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_3

    aget-byte v5, v4, v8

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_3

    aget-byte v5, v4, v9

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_3

    const-string v0, "UTF-32LE"

    goto/16 :goto_2

    :cond_8
    const-string v0, "UTF-8"

    goto :goto_3

    :cond_9
    const-string v0, "UTF-16BE"

    goto :goto_4

    :cond_a
    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0xff

    if-ne v1, v5, :cond_b

    aget-byte v1, v4, v7

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0xfe

    if-ne v1, v5, :cond_b

    :try_start_5
    invoke-static {}, Lcom/aide/engine/c;->j6()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Cp1200"

    :goto_6
    const/4 v1, 0x2

    add-int/lit8 v5, v2, -0x2

    :try_start_6
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :cond_b
    move-object v1, v0

    goto :goto_5

    :cond_c
    const-string v0, "UTF-16LE"

    goto :goto_6

    :cond_d
    :try_start_7
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method
