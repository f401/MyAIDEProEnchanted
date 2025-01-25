.class public final Labcd/cC$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field private static j6:[I


# instance fields
.field private final DW:Labcd/cC;

.field private final FH:Labcd/cC;


# direct methods
.method public constructor <init>(Labcd/cC;Labcd/cC;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/cC$c;->DW:Labcd/cC;

    iput-object p2, p0, Labcd/cC$c;->FH:Labcd/cC;

    return-void
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/cC$c;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/hC$b;->values()[Labcd/hC$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/hC$b;->DW:Labcd/hC$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/hC$b;->j6:Labcd/hC$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    sput-object v0, Labcd/cC$c;->j6:[I

    return-object v0
.end method


# virtual methods
.method public DW(Labcd/hC$b;Labcd/hC;)J
    .registers 4

    invoke-static {}, Labcd/cC$c;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    iget-object p1, p0, Labcd/cC$c;->FH:Labcd/cC;

    iget-object v0, p2, Labcd/hC;->Hw:Ljava/lang/String;

    iget-object p2, p2, Labcd/hC;->tp:Labcd/WD;

    :goto_16
    invoke-virtual {p2}, Labcd/WD;->v5()Labcd/yE;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Labcd/cC;->DW(Ljava/lang/String;Labcd/yE;)J

    move-result-wide p1

    return-wide p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_25
    iget-object p1, p0, Labcd/cC$c;->DW:Labcd/cC;

    iget-object v0, p2, Labcd/hC;->FH:Ljava/lang/String;

    iget-object p2, p2, Labcd/hC;->u7:Labcd/WD;

    goto :goto_16
.end method

.method public j6(Labcd/hC$b;Labcd/hC;)Labcd/FE;
    .registers 4

    invoke-static {}, Labcd/cC$c;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    iget-object p1, p0, Labcd/cC$c;->FH:Labcd/cC;

    iget-object v0, p2, Labcd/hC;->Hw:Ljava/lang/String;

    iget-object p2, p2, Labcd/hC;->tp:Labcd/WD;

    :goto_16
    invoke-virtual {p2}, Labcd/WD;->v5()Labcd/yE;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Labcd/cC;->j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;

    move-result-object p1

    return-object p1

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_25
    iget-object p1, p0, Labcd/cC$c;->DW:Labcd/cC;

    iget-object v0, p2, Labcd/hC;->FH:Ljava/lang/String;

    iget-object p2, p2, Labcd/hC;->u7:Labcd/WD;

    goto :goto_16
.end method
