.class Labcd/Yy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Xy$c;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Xy$c;

.field final j6:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Labcd/Xy$c;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Labcd/Yy;->DW:Labcd/Xy$c;

    iput-object p2, p0, Labcd/Yy;->j6:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/Yy;->j6:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Labcd/Yy;->DW:Labcd/Xy$c;

    invoke-virtual {v0}, Labcd/Xy$c;->j6()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Labcd/Yy;->DW:Labcd/Xy$c;

    invoke-virtual {v1}, Labcd/Xy$c;->j6()V

    throw v0
.end method
