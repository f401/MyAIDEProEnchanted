.class public abstract Labcd/vt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lu;
.implements Ljava/lang/Cloneable;


# instance fields
.field private DW:Labcd/bs;

.field private final j6:Labcd/tt;


# direct methods
.method protected constructor <init>(Labcd/bs;Labcd/tt;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Labcd/vt;->j6:Labcd/tt;

    iput-object p1, p0, Labcd/vt;->DW:Labcd/bs;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/Tr;Labcd/tt;)Labcd/vt;
    .registers 3

    new-instance v0, Labcd/mt;

    invoke-direct {v0, p0, p1}, Labcd/mt;-><init>(Labcd/Tr;Labcd/tt;)V

    return-object v0
.end method


# virtual methods
.method public DW()Labcd/tt;
    .registers 2

    iget-object v0, p0, Labcd/vt;->j6:Labcd/tt;

    return-object v0
.end method

.method public abstract DW(Labcd/qt;)V
.end method

.method public DW(I)Z
    .registers 3

    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract EQ()Z
.end method

.method public FH()Labcd/bs;
    .registers 2

    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public QX()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract XL()Z
.end method

.method public clone()Labcd/vt;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/vt;->clone()Labcd/vt;

    move-result-object v0

    return-object v0
.end method

.method public abstract gn()Labcd/Tr;
.end method

.method public j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v0

    iput-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    :cond_0
    return-void
.end method

.method public final j6(Labcd/Vr;)V
    .registers 4

    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    iget-object v1, p0, Labcd/vt;->DW:Labcd/bs;

    invoke-virtual {v1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-static {v0, v1, p1}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    iput-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    :cond_1
    return-void
.end method

.method protected j6(Labcd/bs;)V
    .registers 4

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/vt;->DW:Labcd/bs;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Labcd/qt;)V
    .registers 4

    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    invoke-virtual {p1, v0}, Labcd/qt;->j6(Labcd/bs;)Labcd/bs;

    move-result-object v1

    iput-object v1, p0, Labcd/vt;->DW:Labcd/bs;

    iget-object v1, p0, Labcd/vt;->j6:Labcd/tt;

    invoke-virtual {v1}, Labcd/tt;->v5()Labcd/yt;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Labcd/yt;->j6(Labcd/vt;Labcd/bs;)V

    invoke-virtual {p0, p1}, Labcd/vt;->DW(Labcd/qt;)V

    return-void
.end method

.method public abstract j6(Labcd/vt$a;)V
.end method

.method public abstract j6()Z
.end method

.method public abstract lg()Labcd/Tr;
.end method

.method public abstract tp()Labcd/cs;
.end method

.method public u7()Labcd/bs;
    .registers 2

    iget-object v0, p0, Labcd/vt;->DW:Labcd/bs;

    return-object v0
.end method

.method public abstract v5()Labcd/es;
.end method
