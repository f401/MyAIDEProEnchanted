.class public abstract Labcd/Hz$a;
.super Labcd/Hz$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "LHz$d<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final DW:Z

.field private final j6:Ljava/io/Closeable;


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;Z)V
    .registers 3

    invoke-direct {p0}, Labcd/Hz$d;-><init>()V

    iput-object p1, p0, Labcd/Hz$a;->j6:Ljava/io/Closeable;

    iput-boolean p2, p0, Labcd/Hz$a;->DW:Z

    return-void
.end method


# virtual methods
.method protected j6()V
    .registers 3

    iget-object v0, p0, Labcd/Hz$a;->j6:Ljava/io/Closeable;

    instance-of v1, v0, Ljava/io/Flushable;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    :cond_b
    iget-boolean v0, p0, Labcd/Hz$a;->DW:Z

    if-eqz v0, :cond_17

    :try_start_f
    iget-object v0, p0, Labcd/Hz$a;->j6:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    move-exception v0

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Labcd/Hz$a;->j6:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :goto_1c
    return-void
.end method
