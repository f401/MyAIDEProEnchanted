.class public abstract Labcd/DJ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/DJ$a;
    }
.end annotation


# static fields
.field private static j6:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/DJ;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/DJ$a;->values()[Labcd/DJ$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/DJ$a;->FH:Labcd/DJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/DJ$a;->DW:Labcd/DJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/DJ$a;->v5:Labcd/DJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/DJ$a;->Hw:Labcd/DJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    :try_start_38
    sget-object v1, Labcd/DJ$a;->j6:Labcd/DJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v1

    :goto_43
    sput-object v0, Labcd/DJ;->j6:[I

    return-object v0
.end method


# virtual methods
.method public abstract DW(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Labcd/jJ;
.end method

.method public abstract DW()Ljava/lang/String;
.end method

.method public FH()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Labcd/DJ$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Labcd/DJ$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Labcd/DJ$a;->v5:Labcd/DJ$a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/HJ;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Labcd/DJ;->j6(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public j6(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Z
    .registers 7

    invoke-virtual {p0}, Labcd/DJ;->v5()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1a

    invoke-virtual {p0}, Labcd/DJ;->v5()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    return p3

    :cond_1a
    invoke-virtual {p0}, Labcd/DJ;->Hw()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_84

    invoke-virtual {p0}, Labcd/DJ;->Hw()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p0}, Labcd/DJ;->FH()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    sget-object v0, Labcd/DJ$a;->j6:Labcd/DJ$a;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    return p3

    :cond_47
    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    sget-object v0, Labcd/DJ$a;->DW:Labcd/DJ$a;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    return p3

    :cond_56
    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    sget-object v0, Labcd/DJ$a;->FH:Labcd/DJ$a;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    return p3

    :cond_65
    invoke-virtual {p1}, Labcd/HJ;->v5()I

    move-result v0

    if-lez v0, :cond_74

    sget-object v0, Labcd/DJ$a;->Hw:Labcd/DJ$a;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    return p3

    :cond_74
    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_83

    sget-object p1, Labcd/DJ$a;->v5:Labcd/DJ$a;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_83

    return p3

    :cond_83
    return v1

    :cond_84
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/DJ$a;

    invoke-static {}, Labcd/DJ;->j6()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_dd

    const/4 v1, 0x2

    if-eq v0, v1, :cond_cc

    const/4 v1, 0x3

    if-eq v0, v1, :cond_bb

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a3

    return p3

    :cond_a3
    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b3

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    :cond_b3
    return p3

    :cond_b4
    invoke-virtual {p1}, Labcd/HJ;->v5()I

    move-result v0

    if-gtz v0, :cond_22

    return p3

    :cond_bb
    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cb

    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    :cond_cb
    return p3

    :cond_cc
    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_dc

    invoke-virtual {p1}, Labcd/HJ;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    :cond_dc
    return p3

    :cond_dd
    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ed

    invoke-virtual {p1}, Labcd/HJ;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    :cond_ed
    return p3
.end method

.method public v5()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
