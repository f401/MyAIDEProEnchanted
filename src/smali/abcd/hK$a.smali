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
            "Ljava/util/Comparator",
            "<",
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
    .registers 4

    invoke-direct {p0}, Labcd/jK;-><init>()V

    iput-object p1, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    iget-object v0, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    sget-object v1, Labcd/hK$a;->FH:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

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

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Labcd/fK;->j6()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    array-length v2, v0

    move v0, v1

    :cond_0
    iget-object v3, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    aget-object v3, v3, v0

    iget-object v3, v3, Labcd/fK;->Hw:[B

    array-length v4, v3

    invoke-virtual {p1, v3, v4}, Labcd/YJ;->j6([BI)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_0

    if-lez v3, :cond_1

    sget-object v0, Labcd/sD;->j6:Labcd/sD;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FAST("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Labcd/hK$a;->Hw:[Labcd/fK;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Labcd/fK;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
