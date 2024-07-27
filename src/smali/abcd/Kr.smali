.class public final Labcd/Kr;
.super Labcd/Xt;


# static fields
.field public static final FH:Labcd/Kr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Kr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Kr;-><init>(I)V

    sput-object v0, Labcd/Kr;->FH:Labcd/Kr;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method

.method public static j6(Labcd/Kr;Labcd/Kr;)Labcd/Kr;
    .registers 7

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    new-instance v2, Labcd/Kr;

    invoke-direct {v2, v1}, Labcd/Kr;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Labcd/Kr;->get(I)Labcd/Jr;

    move-result-object v3

    invoke-virtual {p1, v0}, Labcd/Kr;->get(I)Labcd/Jr;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Jr;)Labcd/Jr;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Labcd/Kr;->j6(ILabcd/Jr;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Labcd/hu;->we()V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list1.size() != list2.size()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(I)Labcd/Jr;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Jr;

    return-object v0
.end method

.method public j6(ILabcd/Jr;)V
    .registers 3

    invoke-virtual {p2}, Labcd/hu;->Ws()V

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
