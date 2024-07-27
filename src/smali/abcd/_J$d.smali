.class Labcd/_J$d;
.super Labcd/UD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final DW:Labcd/_J$a;


# direct methods
.method constructor <init>(Labcd/_J$a;)V
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/UD;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Labcd/_J$d;->DW:Labcd/_J$a;

    return-void
.end method


# virtual methods
.method DW()Labcd/UD;
    .registers 3

    new-instance v0, Labcd/UD;

    invoke-direct {v0}, Labcd/UD;-><init>()V

    iget-object v1, p0, Labcd/_J$d;->DW:Labcd/_J$a;

    invoke-virtual {v1}, Labcd/_J$a;->v5()Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v1}, Labcd/UD;->j6(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Labcd/UD;->j6()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
