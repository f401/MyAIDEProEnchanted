.class Labcd/za$e;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/za$c;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/za;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
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
.field final FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x582c2bf474499afL
    .end annotation
.end field

.field final Hw:Labcd/za;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x200897856dfdd18L    # -8.230684414706079E298

    const-class v0, Labcd/za$e;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/za;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x8899d9c231f9130L
    .end annotation

    const-wide v2, -0x3ab245886b739fcL    # -8.130719818238744E290

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/za$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ab245886b739fcL    # -8.130719818238744E290

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/za$e;->Hw:Labcd/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/za$e;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/za$e;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public j6(Ljava/io/OutputStream;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x16bbbcaefe96dd5cL
    .end annotation

    const-wide v4, -0xbf54d277d569c05L    # -9.55773879651074E250

    :try_start_0
    sget-boolean v0, Labcd/za$e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xbf54d277d569c05L    # -9.55773879651074E250

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Labcd/za$e;->FH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Labcd/za$e;->Hw:Labcd/za;

    invoke-static {v0}, Labcd/za;->gn(Labcd/za;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/za$e;->Hw:Labcd/za;

    invoke-static {v0}, Labcd/za;->gn(Labcd/za;)[B

    move-result-object v0

    iget-object v2, p0, Labcd/za$e;->Hw:Labcd/za;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/za;->DW(Labcd/za;[B)[B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FilterInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x2710

    new-array v0, v0, [B

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    iget-object v1, p0, Labcd/za$e;->Hw:Labcd/za;

    invoke-static {v1, v0}, Labcd/za;->DW(Labcd/za;[B)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/za$e;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
