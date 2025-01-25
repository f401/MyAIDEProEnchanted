.class public Lcom/google/android/gms/internal/ads/hu$a;
.super Lcom/google/android/gms/internal/ads/qt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/hu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/hu$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/qt<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected DW:Lcom/google/android/gms/internal/ads/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private FH:Z

.field private final j6:Lcom/google/android/gms/internal/ads/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/hu;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hu$a;->j6:Lcom/google/android/gms/internal/ads/hu;

    sget v0, Lcom/google/android/gms/internal/ads/hu$e;->Hw:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/hu$a;->FH:Z

    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/hu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fv;->j6(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic J8()Lcom/google/android/gms/internal/ads/Pu;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->u7()Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->j6:Lcom/google/android/gms/internal/ads/hu;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->J8()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    return-object v0
.end method

.method protected final gn()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->FH:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->Hw:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/hu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->FH:Z

    :cond_19
    return-void
.end method

.method public final synthetic j6()Lcom/google/android/gms/internal/ads/Pu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->j6:Lcom/google/android/gms/internal/ads/hu;

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->gn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/hu;)V

    return-object p0
.end method

.method protected final synthetic j6(Lcom/google/android/gms/internal/ads/pt;)Lcom/google/android/gms/internal/ads/qt;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/hu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/hu$a;->j6(Lcom/google/android/gms/internal/ads/hu;)Lcom/google/android/gms/internal/ads/hu$a;

    return-object p0
.end method

.method public final tp()Lcom/google/android/gms/internal/ads/hu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->J8()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hu;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/hu$e;->j6:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    goto :goto_39

    :cond_1d
    if-nez v2, :cond_21

    const/4 v4, 0x0

    goto :goto_39

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/fv;->FH(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_39

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->DW:I

    if-eqz v4, :cond_35

    move-object v2, v0

    goto :goto_36

    :cond_35
    move-object v2, v3

    :goto_36
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/hu;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    :goto_39
    if-eqz v4, :cond_3c

    return-object v0

    :cond_3c
    new-instance v1, Lcom/google/android/gms/internal/ads/wv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/wv;-><init>(Lcom/google/android/gms/internal/ads/Pu;)V

    throw v1
.end method

.method public u7()Lcom/google/android/gms/internal/ads/hu;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->FH:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/av;->j6()Lcom/google/android/gms/internal/ads/av;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/av;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fv;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/fv;->Hw(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->FH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hu$a;->DW:Lcom/google/android/gms/internal/ads/hu;

    return-object v0
.end method

.method public synthetic we()Lcom/google/android/gms/internal/ads/Pu;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hu$a;->tp()Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    return-object v0
.end method
