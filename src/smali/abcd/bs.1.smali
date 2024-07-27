.class public final Labcd/bs;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Rs;
.implements Labcd/lu;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/bs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Labcd/Rs;",
        "Labcd/lu;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/bs;",
        ">;"
    }
.end annotation


# static fields
.field private static final DW:Labcd/bs$a;

.field private static final j6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Labcd/bs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FH:I

.field private final Hw:Labcd/Rs;

.field private final v5:Labcd/Vr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Labcd/bs;->j6:Ljava/util/HashMap;

    new-instance v0, Labcd/bs$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/bs$a;-><init>(Labcd/as;)V

    sput-object v0, Labcd/bs;->DW:Labcd/bs$a;

    return-void
.end method

.method private constructor <init>(ILabcd/Rs;Labcd/Vr;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Labcd/bs;->FH:I

    iput-object p2, p0, Labcd/bs;->Hw:Labcd/Rs;

    iput-object p3, p0, Labcd/bs;->v5:Labcd/Vr;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reg < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(ILabcd/Rs;Labcd/Vr;Labcd/as;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/bs;-><init>(ILabcd/Rs;Labcd/Vr;)V

    return-void
.end method

.method public static DW(ILabcd/Rs;Labcd/Vr;)Labcd/bs;
    .registers 5

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p2}, Labcd/bs;->Zo(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "local  == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;
    .registers 4

    invoke-static {p0, p1, p2}, Labcd/bs;->Zo(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    return-object v0
.end method

.method private Hw(ILabcd/Rs;Labcd/Vr;)Z
    .registers 5

    iget v0, p0, Labcd/bs;->FH:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/bs;->v5:Labcd/Vr;

    if-eq v0, p3, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static Zo(ILabcd/Rs;Labcd/Vr;)Labcd/bs;
    .registers 6

    sget-object v1, Labcd/bs;->j6:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labcd/bs;->DW:Labcd/bs$a;

    invoke-virtual {v0, p0, p1, p2}, Labcd/bs$a;->j6(ILabcd/Rs;Labcd/Vr;)V

    sget-object v0, Labcd/bs;->j6:Ljava/util/HashMap;

    sget-object v2, Labcd/bs;->DW:Labcd/bs$a;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/bs;->DW:Labcd/bs$a;

    invoke-virtual {v0}, Labcd/bs$a;->j6()Labcd/bs;

    move-result-object v0

    sget-object v2, Labcd/bs;->j6:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic j6(ILabcd/Rs;Labcd/Vr;)I
    .registers 4

    invoke-static {p0, p1, p2}, Labcd/bs;->v5(ILabcd/Rs;Labcd/Vr;)I

    move-result v0

    return v0
.end method

.method public static j6(ILabcd/Rs;)Labcd/bs;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/bs;->Zo(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    return-object v0
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Z)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/bs;->v5:Labcd/Vr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/Vr;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Labcd/bs;->Hw:Labcd/Rs;

    if-eq v0, v2, :cond_1

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_2

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    instance-of v2, v0, Labcd/Js;

    if-eqz v2, :cond_2

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    instance-of v2, v0, Labcd/ms;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic j6(Labcd/bs;ILabcd/Rs;Labcd/Vr;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/bs;->Hw(ILabcd/Rs;Labcd/Vr;)Z

    move-result v0

    return v0
.end method

.method private static v5(ILabcd/Rs;Labcd/Vr;)I
    .registers 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Labcd/Vr;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DW(I)Labcd/bs;
    .registers 3

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Labcd/bs;->FH:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object p0

    goto :goto_0
.end method

.method public DW(Labcd/bs;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Labcd/bs;->FH(Labcd/bs;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Labcd/bs;->FH:I

    iget v2, p1, Labcd/bs;->FH:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public FH(I)Labcd/bs;
    .registers 4

    iget v0, p0, Labcd/bs;->FH:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    invoke-static {p1, v0, v1}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p0

    goto :goto_0
.end method

.method public FH(Labcd/bs;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    iget-object v2, p1, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Qs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    iget-object v2, p1, Labcd/bs;->v5:Labcd/Vr;

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Hw()I
    .registers 2

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->Zo()I

    move-result v0

    return v0
.end method

.method public J8()Labcd/Rs;
    .registers 2

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    return-object v0
.end method

.method public final Mr()I
    .registers 2

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->Mr()I

    move-result v0

    return v0
.end method

.method public U2()Labcd/Rs;
    .registers 2

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->U2()Labcd/Rs;

    move-result-object v0

    return-object v0
.end method

.method public VH()I
    .registers 3

    iget v0, p0, Labcd/bs;->FH:I

    invoke-virtual {p0}, Labcd/bs;->Hw()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public Ws()Z
    .registers 2

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->yS()Z

    move-result v0

    return v0
.end method

.method public Zo()Labcd/Vr;
    .registers 2

    iget-object v0, p0, Labcd/bs;->v5:Labcd/Vr;

    return-object v0
.end method

.method public final a8()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Labcd/bs;->j6(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/bs;

    invoke-virtual {p0, p1}, Labcd/bs;->j6(Labcd/bs;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Labcd/bs;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/bs$a;

    if-eqz v0, :cond_0

    check-cast p1, Labcd/bs$a;

    invoke-static {p1}, Labcd/bs$a;->j6(Labcd/bs$a;)I

    move-result v0

    invoke-static {p1}, Labcd/bs$a;->DW(Labcd/bs$a;)Labcd/Rs;

    move-result-object v1

    invoke-static {p1}, Labcd/bs$a;->FH(Labcd/bs$a;)Labcd/Vr;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labcd/bs;->Hw(ILabcd/Rs;Labcd/Vr;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Labcd/bs;

    iget v0, p1, Labcd/bs;->FH:I

    iget-object v1, p1, Labcd/bs;->Hw:Labcd/Rs;

    iget-object v2, p1, Labcd/bs;->v5:Labcd/Vr;

    invoke-direct {p0, v0, v1, v2}, Labcd/bs;->Hw(ILabcd/Rs;Labcd/Vr;)Z

    move-result v0

    goto :goto_0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Labcd/bs;->FH:I

    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    iget-object v2, p0, Labcd/bs;->v5:Labcd/Vr;

    invoke-static {v0, v1, v2}, Labcd/bs;->v5(ILabcd/Rs;Labcd/Vr;)I

    move-result v0

    return v0
.end method

.method public final j3()I
    .registers 2

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->j3()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/bs;)I
    .registers 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Labcd/bs;->FH:I

    iget v3, p1, Labcd/bs;->FH:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v2

    iget-object v3, p1, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v3}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Qs;->j6(Labcd/Qs;)I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Labcd/bs;->v5:Labcd/Vr;

    if-nez v2, :cond_4

    iget-object v1, p1, Labcd/bs;->v5:Labcd/Vr;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p1, Labcd/bs;->v5:Labcd/Vr;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v0}, Labcd/Vr;->j6(Labcd/Vr;)I

    move-result v0

    goto :goto_0
.end method

.method public j6(Labcd/Rs;)Labcd/bs;
    .registers 4

    iget v0, p0, Labcd/bs;->FH:I

    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    invoke-static {v0, p1, v1}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Vr;)Labcd/bs;
    .registers 4

    iget-object v0, p0, Labcd/bs;->v5:Labcd/Vr;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget v0, p0, Labcd/bs;->FH:I

    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-static {v0, v1, p1}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p0

    goto :goto_0
.end method

.method public j6(Labcd/bs;Z)Labcd/bs;
    .registers 8

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move-object v1, p0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Labcd/bs;->FH:I

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Labcd/bs;->v5:Labcd/Vr;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Labcd/bs;->v5:Labcd/Vr;

    if-ne v0, v2, :cond_5

    const/4 v2, 0x1

    move v3, v2

    :goto_2
    if-eqz p2, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    invoke-virtual {p0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v4

    if-ne v2, v4, :cond_0

    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-virtual {p1}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    :goto_3
    iget-object v2, p0, Labcd/bs;->Hw:Labcd/Rs;

    if-ne v1, v2, :cond_6

    if-eqz v3, :cond_6

    move-object v1, p0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Labcd/bs;->v5:Labcd/Vr;

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    iget v0, p0, Labcd/bs;->FH:I

    invoke-static {v0, v1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v0

    :goto_4
    move-object v1, v0

    goto :goto_0

    :cond_7
    iget v2, p0, Labcd/bs;->FH:I

    invoke-static {v2, v1, v0}, Labcd/bs;->DW(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v1, v2

    goto :goto_3
.end method

.method public lg()Ljava/lang/String;
    .registers 2

    iget v0, p0, Labcd/bs;->FH:I

    invoke-static {v0}, Labcd/bs;->j6(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rN()Labcd/bs;
    .registers 4

    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    instance-of v0, v1, Labcd/Qs;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Labcd/Qs;

    :goto_0
    invoke-virtual {v0}, Labcd/Qs;->P8()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Labcd/Qs;->Ws()Labcd/Qs;

    move-result-object v0

    :cond_0
    if-ne v0, v1, :cond_2

    :goto_1
    return-object p0

    :cond_1
    invoke-interface {v1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Labcd/bs;->FH:I

    iget-object v2, p0, Labcd/bs;->v5:Labcd/Vr;

    invoke-static {v1, v0, v2}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/bs;->j6(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()I
    .registers 2

    iget v0, p0, Labcd/bs;->FH:I

    return v0
.end method
