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

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/hC$b;->values()[Labcd/hC$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/hC$b;->DW:Labcd/hC$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Labcd/hC$b;->j6:Labcd/hC$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Labcd/cC$c;->j6:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public DW(Labcd/hC$b;Labcd/hC;)J
    .registers 6

    invoke-static {}, Labcd/cC$c;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/cC$c;->FH:Labcd/cC;

    iget-object v1, p2, Labcd/hC;->Hw:Ljava/lang/String;

    iget-object v2, p2, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v2}, Labcd/WD;->v5()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/cC;->DW(Ljava/lang/String;Labcd/yE;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Labcd/cC$c;->DW:Labcd/cC;

    iget-object v1, p2, Labcd/hC;->FH:Ljava/lang/String;

    iget-object v2, p2, Labcd/hC;->u7:Labcd/WD;

    invoke-virtual {v2}, Labcd/WD;->v5()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/cC;->DW(Ljava/lang/String;Labcd/yE;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public j6(Labcd/hC$b;Labcd/hC;)Labcd/FE;
    .registers 6

    invoke-static {}, Labcd/cC$c;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/cC$c;->FH:Labcd/cC;

    iget-object v1, p2, Labcd/hC;->Hw:Ljava/lang/String;

    iget-object v2, p2, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v2}, Labcd/WD;->v5()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/cC;->j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Labcd/cC$c;->DW:Labcd/cC;

    iget-object v1, p2, Labcd/hC;->FH:Ljava/lang/String;

    iget-object v2, p2, Labcd/hC;->u7:Labcd/WD;

    invoke-virtual {v2}, Labcd/WD;->v5()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/cC;->j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;

    move-result-object v0

    goto :goto_0
.end method
