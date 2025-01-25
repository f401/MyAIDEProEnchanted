.class Labcd/wa;
.super Labcd/za$d;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/za;->j6(Ljava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Labcd/za;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1ebed45cd48ce37L

    const-wide v2, -0x56f80ad904529158L

    const-class v4, Labcd/wa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/za;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/wa;->Zo:Labcd/za;

    iput-object p2, p0, Labcd/wa;->v5:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Labcd/za$d;-><init>(Labcd/wa;)V

    return-void
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2588a159141e716bL
    .end annotation

    const-wide v0, -0x2bdf7dd99324911L

    :try_start_5
    sget-boolean v2, Labcd/wa;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_31

    :cond_c
    :try_start_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/wa;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    return-void

    :cond_26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_2e} :catch_2f
    .catchall {:try_start_c .. :try_end_2e} :catchall_31

    goto :goto_30

    :catch_2f
    move-exception p1

    :goto_30
    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Labcd/wa;->Hw:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method protected FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xbb3ad10ab23390L
    .end annotation

    const-wide v0, 0x13c75e0fb8f9bdbL

    :try_start_5
    sget-boolean v2, Labcd/wa;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/wa;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method
