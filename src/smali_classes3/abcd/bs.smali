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
        "Ljava/lang/Comparable<",
        "Labcd/bs;",
        ">;"
    }
.end annotation


# static fields
.field private static final DW:Labcd/bs$a;

.field private static final j6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_16

    if-eqz p2, :cond_e

    iput p1, p0, Labcd/bs;->FH:I

    iput-object p2, p0, Labcd/bs;->Hw:Labcd/Rs;

    iput-object p3, p0, Labcd/bs;->v5:Labcd/Vr;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reg < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(ILabcd/Rs;Labcd/Vr;Labcd/as;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/bs;-><init>(ILabcd/Rs;Labcd/Vr;)V

    return-void
.end method

.method public static DW(ILabcd/Rs;Labcd/Vr;)Labcd/bs;
    .registers 3

    if-eqz p2, :cond_7

    invoke-static {p0, p1, p2}, Labcd/bs;->Zo(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "local  == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;
    .registers 3

    invoke-static {p0, p1, p2}, Labcd/bs;->Zo(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p0

    return-object p0
.end method

.method private Hw(ILabcd/Rs;Labcd/Vr;)Z
    .registers 5

    iget v0, p0, Labcd/bs;->FH:I

    if-ne v0, p1, :cond_1a

    iget-object p1, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Labcd/bs;->v5:Labcd/Vr;

    if-eq p1, p3, :cond_18

    if-eqz p1, :cond_1a

    invoke-virtual {p1, p3}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private static Zo(ILabcd/Rs;Labcd/Vr;)Labcd/bs;
    .registers 5

    sget-object v0, Labcd/bs;->j6:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    sget-object v1, Labcd/bs;->DW:Labcd/bs$a;

    invoke-virtual {v1, p0, p1, p2}, Labcd/bs$a;->j6(ILabcd/Rs;Labcd/Vr;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Labcd/bs;

    if-eqz p0, :cond_12

    monitor-exit v0

    return-object p0

    :cond_12
    invoke-virtual {v1}, Labcd/bs$a;->j6()Labcd/bs;

    move-result-object p0

    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method static synthetic j6(ILabcd/Rs;Labcd/Vr;)I
    .registers 3

    invoke-static {p0, p1, p2}, Labcd/bs;->v5(ILabcd/Rs;Labcd/Vr;)I

    move-result p0

    return p0
.end method

.method public static j6(ILabcd/Rs;)Labcd/bs;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Labcd/bs;->Zo(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p0

    return-object p0
.end method

.method public static j6(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6(Z)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Labcd/Vr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1e
    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Labcd/bs;->Hw:Labcd/Rs;

    if-eq v1, v2, :cond_54

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_42

    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    instance-of v2, v1, Labcd/Js;

    if-eqz v2, :cond_42

    check-cast v1, Labcd/Js;

    invoke-virtual {v1}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object p1

    :goto_3e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_54

    :cond_42
    if-eqz p1, :cond_4f

    iget-object p1, p0, Labcd/bs;->Hw:Labcd/Rs;

    instance-of v1, p1, Labcd/ms;

    if-eqz v1, :cond_4f

    invoke-interface {p1}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object p1

    goto :goto_3e

    :cond_4f
    iget-object p1, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_54
    :goto_54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic j6(Labcd/bs;ILabcd/Rs;Labcd/Vr;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/bs;->Hw(ILabcd/Rs;Labcd/Vr;)Z

    move-result p0

    return p0
.end method

.method private static v5(ILabcd/Rs;Labcd/Vr;)I
    .registers 3

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Labcd/Vr;->hashCode()I

    move-result p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public DW(I)Labcd/bs;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    iget v0, p0, Labcd/bs;->FH:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object p1

    return-object p1
.end method

.method public DW(Labcd/bs;)Z
    .registers 4

    invoke-virtual {p0, p1}, Labcd/bs;->FH(Labcd/bs;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget v0, p0, Labcd/bs;->FH:I

    iget p1, p1, Labcd/bs;->FH:I

    if-ne v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public FH(I)Labcd/bs;
    .registers 4

    iget v0, p0, Labcd/bs;->FH:I

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    invoke-static {p1, v0, v1}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p1

    return-object p1
.end method

.method public FH(Labcd/bs;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    iget-object v2, p1, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v2}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Qs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    iget-object p1, p1, Labcd/bs;->v5:Labcd/Vr;

    if-eq v1, p1, :cond_24

    if-eqz v1, :cond_25

    invoke-virtual {v1, p1}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    :cond_24
    const/4 v0, 0x1

    :cond_25
    return v0
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
    .registers 2

    check-cast p1, Labcd/bs;

    invoke-virtual {p0, p1}, Labcd/bs;->j6(Labcd/bs;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/bs;

    if-nez v0, :cond_1d

    instance-of v0, p1, Labcd/bs$a;

    if-eqz v0, :cond_1b

    check-cast p1, Labcd/bs$a;

    invoke-static {p1}, Labcd/bs$a;->j6(Labcd/bs$a;)I

    move-result v0

    invoke-static {p1}, Labcd/bs$a;->DW(Labcd/bs$a;)Labcd/Rs;

    move-result-object v1

    invoke-static {p1}, Labcd/bs$a;->FH(Labcd/bs$a;)Labcd/Vr;

    move-result-object p1

    :goto_16
    invoke-direct {p0, v0, v1, p1}, Labcd/bs;->Hw(ILabcd/Rs;Labcd/Vr;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    check-cast p1, Labcd/bs;

    iget v0, p1, Labcd/bs;->FH:I

    iget-object v1, p1, Labcd/bs;->Hw:Labcd/Rs;

    iget-object p1, p1, Labcd/bs;->v5:Labcd/Vr;

    goto :goto_16
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

    iget v0, p0, Labcd/bs;->FH:I

    iget v1, p1, Labcd/bs;->FH:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-le v0, v1, :cond_c

    return v3

    :cond_c
    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    iget-object v1, p1, Labcd/bs;->Hw:Labcd/Rs;

    invoke-interface {v1}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Qs;->j6(Labcd/Qs;)I

    move-result v0

    if-eqz v0, :cond_1f

    return v0

    :cond_1f
    iget-object v0, p0, Labcd/bs;->v5:Labcd/Vr;

    iget-object p1, p1, Labcd/bs;->v5:Labcd/Vr;

    if-nez v0, :cond_29

    if-nez p1, :cond_28

    const/4 v2, 0x0

    :cond_28
    return v2

    :cond_29
    if-nez p1, :cond_2c

    return v3

    :cond_2c
    invoke-virtual {v0, p1}, Labcd/Vr;->j6(Labcd/Vr;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/Rs;)Labcd/bs;
    .registers 4

    iget v0, p0, Labcd/bs;->FH:I

    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    invoke-static {v0, p1, v1}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Vr;)Labcd/bs;
    .registers 4

    iget-object v0, p0, Labcd/bs;->v5:Labcd/Vr;

    if-eq v0, p1, :cond_16

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    :cond_d
    iget v0, p0, Labcd/bs;->FH:I

    iget-object v1, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-static {v0, v1, p1}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_16
    return-object p0
.end method

.method public j6(Labcd/bs;Z)Labcd/bs;
    .registers 7

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_5c

    iget v1, p0, Labcd/bs;->FH:I

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v2

    if-eq v1, v2, :cond_f

    goto :goto_5c

    :cond_f
    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    if-eqz v1, :cond_21

    invoke-virtual {p1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_21

    :cond_1e
    iget-object v1, p0, Labcd/bs;->v5:Labcd/Vr;

    goto :goto_22

    :cond_21
    :goto_21
    move-object v1, v0

    :goto_22
    iget-object v2, p0, Labcd/bs;->v5:Labcd/Vr;

    if-ne v1, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz p2, :cond_2e

    if-nez v2, :cond_2e

    return-object v0

    :cond_2e
    invoke-virtual {p0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object p2

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v3

    if-eq p2, v3, :cond_39

    return-object v0

    :cond_39
    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    invoke-virtual {p1}, Labcd/bs;->J8()Labcd/Rs;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p2, p0, Labcd/bs;->Hw:Labcd/Rs;

    :cond_47
    iget-object p1, p0, Labcd/bs;->Hw:Labcd/Rs;

    if-ne p2, p1, :cond_4e

    if-eqz v2, :cond_4e

    return-object p0

    :cond_4e
    iget p1, p0, Labcd/bs;->FH:I

    if-nez v1, :cond_57

    invoke-static {p1, p2}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object p1

    goto :goto_5b

    :cond_57
    invoke-static {p1, p2, v1}, Labcd/bs;->DW(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object p1

    :goto_5b
    return-object p1

    :cond_5c
    :goto_5c
    return-object v0
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

    iget-object v0, p0, Labcd/bs;->Hw:Labcd/Rs;

    instance-of v1, v0, Labcd/Qs;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Labcd/Qs;

    goto :goto_e

    :cond_a
    invoke-interface {v0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v1

    :goto_e
    invoke-virtual {v1}, Labcd/Qs;->P8()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Labcd/Qs;->Ws()Labcd/Qs;

    move-result-object v1

    :cond_18
    if-ne v1, v0, :cond_1b

    return-object p0

    :cond_1b
    iget v0, p0, Labcd/bs;->FH:I

    iget-object v2, p0, Labcd/bs;->v5:Labcd/Vr;

    invoke-static {v0, v1, v2}, Labcd/bs;->FH(ILabcd/Rs;Labcd/Vr;)Labcd/bs;

    move-result-object v0

    return-object v0
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
