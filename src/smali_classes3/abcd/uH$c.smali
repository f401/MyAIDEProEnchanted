.class Labcd/uH$c;
.super Ljava/lang/ref/SoftReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/uH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Labcd/CG;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:J

.field final FH:I

.field Hw:J

.field final j6:Labcd/aH;

.field private v5:Z


# direct methods
.method protected constructor <init>(Labcd/aH;JLabcd/CG;Ljava/lang/ref/ReferenceQueue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/aH;",
            "J",
            "Labcd/CG;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Labcd/CG;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p4, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Labcd/uH$c;->j6:Labcd/aH;

    iput-wide p2, p0, Labcd/uH$c;->DW:J

    invoke-virtual {p4}, Labcd/CG;->j6()I

    move-result p1

    iput p1, p0, Labcd/uH$c;->FH:I

    return-void
.end method


# virtual methods
.method final j6()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Labcd/uH$c;->v5:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_8

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Labcd/uH$c;->v5:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
