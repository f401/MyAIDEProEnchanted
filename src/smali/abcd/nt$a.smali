.class public final enum Labcd/nt$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/nt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/nt$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/nt$a;

.field public static final enum FH:Labcd/nt$a;

.field public static final enum Hw:Labcd/nt$a;

.field private static final Zo:[Labcd/nt$a;

.field public static final enum j6:Labcd/nt$a;

.field public static final enum v5:Labcd/nt$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/nt$a;

    const-string v1, "MOVE_PARAM_COMBINER"

    invoke-direct {v0, v1, v2}, Labcd/nt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/nt$a;->j6:Labcd/nt$a;

    new-instance v0, Labcd/nt$a;

    const-string v1, "SCCP"

    invoke-direct {v0, v1, v3}, Labcd/nt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/nt$a;->DW:Labcd/nt$a;

    new-instance v0, Labcd/nt$a;

    const-string v1, "LITERAL_UPGRADE"

    invoke-direct {v0, v1, v4}, Labcd/nt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/nt$a;->FH:Labcd/nt$a;

    new-instance v0, Labcd/nt$a;

    const-string v1, "CONST_COLLECTOR"

    invoke-direct {v0, v1, v5}, Labcd/nt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/nt$a;->Hw:Labcd/nt$a;

    new-instance v0, Labcd/nt$a;

    const-string v1, "ESCAPE_ANALYSIS"

    invoke-direct {v0, v1, v6}, Labcd/nt$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/nt$a;->v5:Labcd/nt$a;

    const/4 v0, 0x5

    new-array v0, v0, [Labcd/nt$a;

    sget-object v1, Labcd/nt$a;->j6:Labcd/nt$a;

    aput-object v1, v0, v2

    sget-object v1, Labcd/nt$a;->DW:Labcd/nt$a;

    aput-object v1, v0, v3

    sget-object v1, Labcd/nt$a;->FH:Labcd/nt$a;

    aput-object v1, v0, v4

    sget-object v1, Labcd/nt$a;->Hw:Labcd/nt$a;

    aput-object v1, v0, v5

    sget-object v1, Labcd/nt$a;->v5:Labcd/nt$a;

    aput-object v1, v0, v6

    sput-object v0, Labcd/nt$a;->Zo:[Labcd/nt$a;

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

.method public static valueOf(Ljava/lang/String;)Labcd/nt$a;
    .registers 2

    const-class v0, Labcd/nt$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/nt$a;

    return-object v0
.end method

.method public static values()[Labcd/nt$a;
    .registers 1

    sget-object v0, Labcd/nt$a;->Zo:[Labcd/nt$a;

    invoke-virtual {v0}, [Labcd/nt$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/nt$a;

    return-object v0
.end method
