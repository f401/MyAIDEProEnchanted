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
    .registers 3

    const-class v0, Labcd/za$e;

    const-wide v1, -0x200897856dfdd18L  # -8.230684414706079E298

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/za;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x8899d9c231f9130L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/za$e;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x3ab245886b739fcL  # -8.130719818238744E290

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/za$e;->Hw:Labcd/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/za$e;->FH:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/za$e;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x3ab245886b739fcL  # -8.130719818238744E290

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public j6(Ljava/io/OutputStream;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x16bbbcaefe96dd5cL
    .end annotation

    const-wide v0, -0xbf54d277d569c05L  # -9.55773879651074E250

    :try_start_5
    sget-boolean v2, Labcd/za$e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_48

    :cond_c
    :try_start_c
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Labcd/za$e;->FH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Labcd/za$e;->Hw:Labcd/za;

    invoke-static {v3}, Labcd/za;->gn(Labcd/za;)[B

    move-result-object v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Labcd/za$e;->Hw:Labcd/za;

    invoke-static {v3}, Labcd/za;->gn(Labcd/za;)[B

    move-result-object v3

    iget-object v4, p0, Labcd/za$e;->Hw:Labcd/za;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Labcd/za;->DW(Labcd/za;[B)[B

    goto :goto_31

    :cond_2d
    const/16 v3, 0x2710

    new-array v3, v3, [B

    :goto_31
    invoke-virtual {v2, v3}, Ljava/io/FilterInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3d

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_31

    :cond_3d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    iget-object v2, p0, Labcd/za$e;->Hw:Labcd/za;

    invoke-static {v2, v3}, Labcd/za;->DW(Labcd/za;[B)[B
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_45} :catch_46
    .catchall {:try_start_c .. :try_end_45} :catchall_48

    goto :goto_47

    :catch_46
    move-exception p1

    :goto_47
    return-void

    :catchall_48
    move-exception v2

    sget-boolean v3, Labcd/za$e;->DW:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    goto :goto_52

    :goto_51
    throw v2

    :goto_52
    goto :goto_51
.end method
