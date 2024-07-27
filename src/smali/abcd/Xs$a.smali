.class Labcd/Xs$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Xs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field j6:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/util/BitSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Xs$a;->j6:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public DW(Labcd/mt;)V
    .registers 4

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-static {p1}, Labcd/Xs;->j6(Labcd/vt;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/Xs$a;->j6:Ljava/util/BitSet;

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public j6(Labcd/mt;)V
    .registers 4

    invoke-static {p1}, Labcd/Xs;->j6(Labcd/vt;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Xs$a;->j6:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method

.method public j6(Labcd/ot;)V
    .registers 4

    invoke-static {p1}, Labcd/Xs;->j6(Labcd/vt;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Xs$a;->j6:Ljava/util/BitSet;

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-void
.end method
