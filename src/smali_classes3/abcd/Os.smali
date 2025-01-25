.class public final Labcd/Os;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/Os;",
        ">;"
    }
.end annotation


# static fields
.field private static final j6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Labcd/Os;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Labcd/Qs;

.field private final Hw:Labcd/Ps;

.field private v5:Labcd/Ps;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Labcd/Os;->j6:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Labcd/Qs;Labcd/Ps;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_23

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_13

    iput-object p1, p0, Labcd/Os;->DW:Ljava/lang/String;

    iput-object p2, p0, Labcd/Os;->FH:Labcd/Qs;

    iput-object p3, p0, Labcd/Os;->Hw:Labcd/Ps;

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/Os;->v5:Labcd/Ps;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "parameterTypes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "returnType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static DW(Labcd/Os;)Labcd/Os;
    .registers 4

    sget-object v0, Labcd/Os;->j6:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Labcd/Os;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Os;

    if-eqz v2, :cond_11

    monitor-exit v0

    return-object v2

    :cond_11
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method private static DW(Ljava/lang/String;)[Labcd/Qs;
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    const-string v4, "bad descriptor"

    if-ne v2, v3, :cond_47

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_12
    const/16 v6, 0x29

    if-ge v3, v0, :cond_2b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_1e

    move v1, v3

    goto :goto_2b

    :cond_1e
    const/16 v6, 0x41

    if-lt v7, v6, :cond_28

    const/16 v6, 0x5a

    if-gt v7, v6, :cond_28

    add-int/lit8 v5, v5, 0x1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2b
    :goto_2b
    if-eqz v1, :cond_41

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_41

    add-int/2addr v1, v2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3b

    new-array p0, v5, [Labcd/Qs;

    return-object p0

    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :goto_4d
    throw p0

    :goto_4e
    goto :goto_4d
.end method

.method public static j6(Labcd/Qs;I)Labcd/Os;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, p1, :cond_17

    const/16 v2, 0x49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/Qs;->J8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/Os;->j6(Ljava/lang/String;)Labcd/Os;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Ljava/lang/String;)Labcd/Os;
    .registers 9

    if-eqz p0, :cond_78

    sget-object v0, Labcd/Os;->j6:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Os;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_75

    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    invoke-static {p0}, Labcd/Os;->DW(Ljava/lang/String;)[Labcd/Qs;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_41

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->FH(Ljava/lang/String;)Labcd/Qs;

    move-result-object v0

    new-instance v3, Labcd/Ps;

    invoke-direct {v3, v4}, Labcd/Ps;-><init>(I)V

    :goto_2d
    if-ge v2, v4, :cond_37

    aget-object v5, v1, v2

    invoke-virtual {v3, v2, v5}, Labcd/Ps;->j6(ILabcd/Qs;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_37
    new-instance v1, Labcd/Os;

    invoke-direct {v1, p0, v0, v3}, Labcd/Os;-><init>(Ljava/lang/String;Labcd/Qs;Labcd/Ps;)V

    invoke-static {v1}, Labcd/Os;->DW(Labcd/Os;)Labcd/Os;

    move-result-object p0

    return-object p0

    :cond_41
    move v6, v0

    :goto_42
    const/16 v7, 0x5b

    if-ne v5, v7, :cond_4d

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_42

    :cond_4d
    const/16 v7, 0x4c

    if-ne v5, v7, :cond_65

    const/16 v5, 0x3b

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5d

    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    add-int/lit8 v5, v6, 0x1

    :goto_67
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v0

    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_17

    :catchall_75
    move-exception p0

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0

    :cond_78
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_81

    :goto_80
    throw p0

    :goto_81
    goto :goto_80
.end method

.method public static j6(Ljava/lang/String;Labcd/Qs;ZZ)Labcd/Os;
    .registers 4

    invoke-static {p0}, Labcd/Os;->j6(Ljava/lang/String;)Labcd/Os;

    move-result-object p0

    if-eqz p2, :cond_7

    return-object p0

    :cond_7
    if-eqz p3, :cond_10

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Labcd/Qs;->j6(I)Labcd/Qs;

    move-result-object p1

    :cond_10
    invoke-virtual {p0, p1}, Labcd/Os;->j6(Labcd/Qs;)Labcd/Os;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Os;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public VH()Labcd/Ps;
    .registers 2

    iget-object v0, p0, Labcd/Os;->Hw:Labcd/Ps;

    return-object v0
.end method

.method public Zo()Labcd/Ps;
    .registers 7

    iget-object v0, p0, Labcd/Os;->v5:Labcd/Ps;

    if-nez v0, :cond_2f

    iget-object v0, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Labcd/Ps;

    invoke-direct {v1, v0}, Labcd/Ps;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v2, v0, :cond_28

    iget-object v4, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v4, v2}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Qs;->gW()Z

    move-result v5

    if-eqz v5, :cond_22

    sget-object v4, Labcd/Qs;->VH:Labcd/Qs;

    const/4 v3, 0x1

    :cond_22
    invoke-virtual {v1, v2, v4}, Labcd/Ps;->j6(ILabcd/Qs;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_28
    if-eqz v3, :cond_2b

    goto :goto_2d

    :cond_2b
    iget-object v1, p0, Labcd/Os;->Hw:Labcd/Ps;

    :goto_2d
    iput-object v1, p0, Labcd/Os;->v5:Labcd/Ps;

    :cond_2f
    iget-object v0, p0, Labcd/Os;->v5:Labcd/Ps;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Os;

    invoke-virtual {p0, p1}, Labcd/Os;->j6(Labcd/Os;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Labcd/Os;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p0, Labcd/Os;->DW:Ljava/lang/String;

    check-cast p1, Labcd/Os;

    iget-object p1, p1, Labcd/Os;->DW:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Os;->DW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Os;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Labcd/Os;->FH:Labcd/Qs;

    iget-object v2, p1, Labcd/Os;->FH:Labcd/Qs;

    invoke-virtual {v1, v2}, Labcd/Qs;->j6(Labcd/Qs;)I

    move-result v1

    if-eqz v1, :cond_f

    return v1

    :cond_f
    iget-object v1, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v1

    iget-object v2, p1, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_38

    iget-object v5, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v5, v4}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v5

    iget-object v6, p1, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v6, v4}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v6

    invoke-virtual {v5, v6}, Labcd/Qs;->j6(Labcd/Qs;)I

    move-result v5

    if-eqz v5, :cond_35

    return v5

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_38
    if-ge v1, v2, :cond_3c

    const/4 p1, -0x1

    return p1

    :cond_3c
    if-le v1, v2, :cond_40

    const/4 p1, 0x1

    return p1

    :cond_40
    return v0
.end method

.method public j6(Labcd/Qs;)Labcd/Os;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Qs;->J8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Os;->DW:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v1, p1}, Labcd/Ps;->FH(Labcd/Qs;)Labcd/Ps;

    move-result-object p1

    invoke-virtual {p1}, Labcd/hu;->we()V

    new-instance v1, Labcd/Os;

    iget-object v2, p0, Labcd/Os;->FH:Labcd/Qs;

    invoke-direct {v1, v0, v2, p1}, Labcd/Os;-><init>(Ljava/lang/String;Labcd/Qs;Labcd/Ps;)V

    invoke-static {v1}, Labcd/Os;->DW(Labcd/Os;)Labcd/Os;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Os;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public we()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/Os;->FH:Labcd/Qs;

    return-object v0
.end method
