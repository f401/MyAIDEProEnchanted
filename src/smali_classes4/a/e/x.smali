.class public La/e/x;
.super Ljava/lang/Object;

# interfaces
.implements La/e/m;


# instance fields
.field private final a:La/e/m;

.field private final b:Z


# direct methods
.method public constructor <init>(La/e/m;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/e/x;->a:La/e/m;

    iput-boolean p2, p0, La/e/x;->b:Z

    return-void
.end method


# virtual methods
.method public a(La/e/g;)V
    .registers 6

    iget-boolean v0, p0, La/e/x;->b:Z

    if-eqz v0, :cond_e

    invoke-interface {p1}, La/e/g;->c()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    :cond_e
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-interface {p1}, La/e/g;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_17
    :try_start_17
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2c

    move-result-object v1

    if-nez v1, :cond_21

    invoke-interface {p1}, La/e/g;->d()V

    return-void

    :cond_21
    :try_start_21
    iget-object v2, p0, La/e/x;->a:La/e/m;

    new-instance v3, La/e/al;

    invoke-direct {v3, p1, v1, v0}, La/e/al;-><init>(La/e/g;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipInputStream;)V

    invoke-interface {v2, v3}, La/e/m;->a(La/e/g;)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2c

    goto :goto_17

    :catchall_2c
    move-exception v0

    invoke-interface {p1}, La/e/g;->d()V

    throw v0
.end method
