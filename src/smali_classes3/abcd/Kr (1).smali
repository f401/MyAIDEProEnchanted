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

    move-result v0

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v1

    if-ne v0, v1, :cond_28

    new-instance v1, Labcd/Kr;

    invoke-direct {v1, v0}, Labcd/Kr;-><init>(I)V

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_24

    invoke-virtual {p0, v2}, Labcd/Kr;->get(I)Labcd/Jr;

    move-result-object v3

    invoke-virtual {p1, v2}, Labcd/Kr;->get(I)Labcd/Jr;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/Jr;->j6(Labcd/Jr;Labcd/Jr;)Labcd/Jr;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labcd/Kr;->j6(ILabcd/Jr;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "list1.size() != list2.size()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    :goto_30
    throw p0

    :goto_31
    goto :goto_30
.end method


# virtual methods
.method public get(I)Labcd/Jr;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Jr;

    return-object p1
.end method

.method public j6(ILabcd/Jr;)V
    .registers 3

    invoke-virtual {p2}, Labcd/hu;->Ws()V

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
