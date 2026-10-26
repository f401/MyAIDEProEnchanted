.class public final enum Labcd/Ir;
.super Ljava/lang/Enum;

# interfaces
.implements Labcd/lu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/Ir;",
        ">;",
        "Labcd/lu;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/Ir;

.field public static final enum FH:Labcd/Ir;

.field public static final enum Hw:Labcd/Ir;

.field public static final enum j6:Labcd/Ir;

.field private static final v5:[Labcd/Ir;


# instance fields
.field private final Zo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Labcd/Ir;

    const-string v1, "RUNTIME"

    const-string v2, "runtime"

    invoke-direct {v0, v1, v6, v2}, Labcd/Ir;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/Ir;->j6:Labcd/Ir;

    new-instance v1, Labcd/Ir;

    const-string v2, "BUILD"

    const-string v3, "build"

    invoke-direct {v1, v2, v7, v3}, Labcd/Ir;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Labcd/Ir;->DW:Labcd/Ir;

    new-instance v2, Labcd/Ir;

    const-string v3, "SYSTEM"

    const-string v4, "system"

    invoke-direct {v2, v3, v8, v4}, Labcd/Ir;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Labcd/Ir;->FH:Labcd/Ir;

    new-instance v3, Labcd/Ir;

    const-string v4, "EMBEDDED"

    const-string v5, "embedded"

    invoke-direct {v3, v4, v9, v5}, Labcd/Ir;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Labcd/Ir;->Hw:Labcd/Ir;

    const/4 v4, 0x4

    new-array v4, v4, [Labcd/Ir;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    sput-object v4, Labcd/Ir;->v5:[Labcd/Ir;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/Ir;->Zo:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/Ir;
    .locals 1

    const-class v0, Labcd/Ir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/Ir;

    return-object v0
.end method

.method public static values()[Labcd/Ir;
    .locals 1

    sget-object v0, Labcd/Ir;->v5:[Labcd/Ir;

    invoke-virtual {v0}, [Labcd/Ir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/Ir;

    return-object v0
.end method


# virtual methods
.method public aM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Labcd/Ir;->Zo:Ljava/lang/String;

    return-object v0
.end method
