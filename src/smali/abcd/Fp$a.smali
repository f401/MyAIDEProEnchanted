.class final enum Labcd/Fp$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/Fp$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/Fp$a;

.field public static final enum FH:Labcd/Fp$a;

.field private static final Hw:[Labcd/Fp$a;

.field public static final enum j6:Labcd/Fp$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/Fp$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Labcd/Fp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Fp$a;->j6:Labcd/Fp$a;

    new-instance v0, Labcd/Fp$a;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v3}, Labcd/Fp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Fp$a;->DW:Labcd/Fp$a;

    new-instance v0, Labcd/Fp$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v4}, Labcd/Fp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Fp$a;->FH:Labcd/Fp$a;

    const/4 v0, 0x3

    new-array v0, v0, [Labcd/Fp$a;

    sget-object v1, Labcd/Fp$a;->j6:Labcd/Fp$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/Fp$a;->DW:Labcd/Fp$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/Fp$a;->FH:Labcd/Fp$a;

    aput-object v1, v0, v4

    sput-object v0, Labcd/Fp$a;->Hw:[Labcd/Fp$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/Fp$a;
    .registers 2

    const-class v0, Labcd/Fp$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/Fp$a;

    return-object v0
.end method

.method public static values()[Labcd/Fp$a;
    .registers 1

    sget-object v0, Labcd/Fp$a;->Hw:[Labcd/Fp$a;

    invoke-virtual {v0}, [Labcd/Fp$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/Fp$a;

    return-object v0
.end method
