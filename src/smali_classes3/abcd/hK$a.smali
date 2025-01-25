.class Labcd/hK$a;
.super Labcd/jK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/hK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final FH:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Labcd/fK;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Hw:[Labcd/fK;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/gK;

    invoke-direct {v0}, Labcd/gK;-><init>()V

    sput-object v0, Labcd/hK$a;->FH:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>([Labcd/fK;)V
    .registers 3

    invoke-direct {p0}, Labcd/jK;-><init>()V

    iput-object p1, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    sget-object v0, Labcd/hK$a;->FH:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method synthetic constructor <init>([Labcd/fK;Labcd/hK$a;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/hK$a;-><init>([Labcd/fK;)V

    return-void
.end method


# virtual methods
.method public clone()Labcd/jK;
    .registers 1

    return-object p0
.end method

.method public j6()Z
    .registers 6

    iget-object v0, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_8

    return v2

    :cond_8
    aget-object v4, v0, v3

    invoke-virtual {v4}, Labcd/fK;->j6()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public j6(Labcd/YJ;)Z
    .registers 7

    iget-object v0, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    iget-object v3, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    aget-object v3, v3, v2

    iget-object v3, v3, Labcd/fK;->Hw:[B

    array-length v4, v3

    invoke-virtual {p1, v3, v4}, Labcd/YJ;->j6([BI)I

    move-result v3

    if-nez v3, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_19

    goto :goto_5

    :cond_19
    if-gtz v3, :cond_1c

    return v1

    :cond_1c
    sget-object p1, Labcd/sD;->j6:Labcd/sD;

    goto :goto_20

    :goto_1f
    throw p1

    :goto_20
    goto :goto_1f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAST("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_b
    iget-object v2, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    array-length v2, v2

    if-lt v1, v2, :cond_1a

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    if-lez v1, :cond_21

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v2, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Labcd/fK;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
