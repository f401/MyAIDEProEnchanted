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
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$g;

    const-wide v1, 0x16c8527c6dcb1504L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x7793860677919f1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1df2cf830b73f385L  # -2.1011299888660763E164

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$g;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$g;->FH:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$g;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$g;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x317327bb1ce2a930L  # -2.4884937606950444E70

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$g;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$g;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x317327bb1ce2a930L  # -2.4884937606950444E70

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method


# virtual methods
.method public j6(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x344f80e0f46dada4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$g;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x5dc1b865ee6812e0L  # 4.321745119590022E143

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/c$b$g;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ye(Lcom/aide/engine/c;)Lcom/aide/engine/q;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/aide/engine/c$b$g;->FH:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->ye(Lcom/aide/engine/c;)Lcom/aide/engine/q;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aide/engine/q;->j6(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1

    :cond_23
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v1, :cond_3b

    rsub-int/lit8 v5, v4, 0x4

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v5
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_e7

    const/4 v6, -0x1

    if-ne v5, v6, :cond_39

    goto :goto_3b

    :cond_39
    add-int/2addr v4, v5

    goto :goto_2d

    :cond_3b
    :goto_3b
    const/16 v5, 0xfe

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xff

    if-ne v4, v1, :cond_71

    aget-byte v1, v2, v3

    and-int/lit16 v10, v1, 0xff

    if-nez v10, :cond_5c

    aget-byte v10, v2, v6

    and-int/2addr v10, v9

    if-nez v10, :cond_5c

    aget-byte v10, v2, v8

    and-int/2addr v10, v9

    if-ne v10, v5, :cond_5c

    aget-byte v10, v2, v7

    and-int/2addr v10, v9

    if-ne v10, v9, :cond_5c

    const-string v1, "UTF-32BE"

    goto :goto_72

    :cond_5c
    and-int/2addr v1, v9

    if-ne v1, v9, :cond_71

    aget-byte v1, v2, v6

    and-int/2addr v1, v9

    if-ne v1, v5, :cond_71

    aget-byte v1, v2, v8

    and-int/2addr v1, v9

    if-nez v1, :cond_71

    aget-byte v1, v2, v7

    and-int/2addr v1, v9

    if-nez v1, :cond_71

    const-string v1, "UTF-32LE"

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    if-nez v1, :cond_9b

    if-lt v4, v7, :cond_9b

    aget-byte v10, v2, v3

    and-int/2addr v10, v9

    const/16 v11, 0xef

    if-ne v10, v11, :cond_9b

    aget-byte v10, v2, v6

    and-int/2addr v10, v9

    const/16 v11, 0xbb

    if-ne v10, v11, :cond_9b

    aget-byte v10, v2, v8

    and-int/2addr v10, v9

    const/16 v11, 0xbf

    if-ne v10, v11, :cond_9b

    :try_start_8b
    invoke-static {}, Lcom/aide/engine/c;->j6()Z

    move-result v1
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_e7

    if-eqz v1, :cond_94

    const-string v1, "UTF8"

    goto :goto_96

    :cond_94
    const-string v1, "UTF-8"

    :goto_96
    add-int/lit8 v10, v4, -0x3

    :try_start_98
    invoke-virtual {v0, v2, v7, v10}, Ljava/io/PushbackInputStream;->unread([BII)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_e7

    :cond_9b
    if-nez v1, :cond_ce

    if-lt v4, v8, :cond_ce

    aget-byte v7, v2, v3

    and-int/lit16 v10, v7, 0xff

    if-ne v10, v5, :cond_b6

    aget-byte v10, v2, v6

    and-int/2addr v10, v9

    if-ne v10, v9, :cond_b6

    :try_start_aa
    invoke-static {}, Lcom/aide/engine/c;->j6()Z

    move-result v1
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_e7

    if-eqz v1, :cond_b3

    const-string v1, "Cp1201"

    goto :goto_ce

    :cond_b3
    const-string v1, "UTF-16BE"

    goto :goto_ce

    :cond_b6
    and-int/2addr v7, v9

    if-ne v7, v9, :cond_ce

    aget-byte v6, v2, v6

    and-int/2addr v6, v9

    if-ne v6, v5, :cond_ce

    :try_start_be
    invoke-static {}, Lcom/aide/engine/c;->j6()Z

    move-result v1
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_e7

    if-eqz v1, :cond_c7

    const-string v1, "Cp1200"

    goto :goto_c9

    :cond_c7
    const-string v1, "UTF-16LE"

    :goto_c9
    add-int/lit8 v5, v4, -0x2

    :try_start_cb
    invoke-virtual {v0, v2, v8, v5}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_ce
    :goto_ce
    if-nez v1, :cond_e1

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    if-eqz p2, :cond_db

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1

    :cond_db
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v1

    :cond_e1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_e6
    .catchall {:try_start_cb .. :try_end_e6} :catchall_e7

    return-object v2

    :catchall_e7
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$g;->DW:Z

    if-eqz v1, :cond_f8

    const-wide v2, 0x5dc1b865ee6812e0L  # 4.321745119590022E143

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f8
    goto :goto_fa

    :goto_f9
    throw v0

    :goto_fa
    goto :goto_f9
.end method
