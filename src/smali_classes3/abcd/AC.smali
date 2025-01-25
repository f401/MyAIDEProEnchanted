.class Labcd/AC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/BC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/hC;",
        ">;"
    }
.end annotation


# static fields
.field private static j6:[I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j6(Labcd/hC$a;)I
    .registers 4

    invoke-static {}, Labcd/AC;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13

    const/16 p1, 0xa

    return p1

    :cond_13
    return v0

    :cond_14
    const/4 p1, 0x2

    return p1
.end method

.method private j6(Labcd/hC;)Ljava/lang/String;
    .registers 4

    iget-object v0, p1, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v0, v1, :cond_9

    iget-object p1, p1, Labcd/hC;->FH:Ljava/lang/String;

    return-object p1

    :cond_9
    iget-object p1, p1, Labcd/hC;->Hw:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/AC;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/hC$a;->values()[Labcd/hC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/hC$a;->j6:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/hC$a;->v5:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/hC$a;->DW:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    :try_start_38
    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v1

    :goto_43
    sput-object v0, Labcd/AC;->j6:[I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/hC;

    check-cast p2, Labcd/hC;

    invoke-virtual {p0, p1, p2}, Labcd/AC;->j6(Labcd/hC;Labcd/hC;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/hC;Labcd/hC;)I
    .registers 5

    invoke-direct {p0, p1}, Labcd/AC;->j6(Labcd/hC;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Labcd/AC;->j6(Labcd/hC;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p1}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/AC;->j6(Labcd/hC$a;)I

    move-result p1

    invoke-virtual {p2}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object p2

    invoke-direct {p0, p2}, Labcd/AC;->j6(Labcd/hC$a;)I

    move-result p2

    sub-int v0, p1, p2

    :cond_20
    return v0
.end method
