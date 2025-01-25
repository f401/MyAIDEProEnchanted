.class public abstract Labcd/jK;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Labcd/jK;

.field public static final j6:Labcd/jK;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/jK$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/jK$a;-><init>(Labcd/jK$a;)V

    sput-object v0, Labcd/jK;->j6:Labcd/jK;

    new-instance v0, Labcd/jK$b;

    invoke-direct {v0, v1}, Labcd/jK$b;-><init>(Labcd/jK$b;)V

    sput-object v0, Labcd/jK;->DW:Labcd/jK;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clone()Labcd/jK;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/jK;->clone()Labcd/jK;

    move-result-object v0

    return-object v0
.end method

.method public abstract j6()Z
.end method

.method public abstract j6(Labcd/YJ;)Z
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_16

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
