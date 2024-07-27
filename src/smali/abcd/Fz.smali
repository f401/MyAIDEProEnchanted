.class public final enum Labcd/Fz;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/Fz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/Fz;

.field public static final enum FH:Labcd/Fz;

.field public static final enum Hw:Labcd/Fz;

.field public static final enum j6:Labcd/Fz;

.field private static final v5:[Labcd/Fz;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/Fz;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Labcd/Fz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Fz;->j6:Labcd/Fz;

    new-instance v0, Labcd/Fz;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Labcd/Fz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Fz;->DW:Labcd/Fz;

    new-instance v0, Labcd/Fz;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Labcd/Fz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Fz;->FH:Labcd/Fz;

    new-instance v0, Labcd/Fz;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Labcd/Fz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Fz;->Hw:Labcd/Fz;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/Fz;

    sget-object v1, Labcd/Fz;->j6:Labcd/Fz;

    aput-object v1, v0, v2

    sget-object v1, Labcd/Fz;->DW:Labcd/Fz;

    aput-object v1, v0, v3

    sget-object v1, Labcd/Fz;->FH:Labcd/Fz;

    aput-object v1, v0, v4

    sget-object v1, Labcd/Fz;->Hw:Labcd/Fz;

    aput-object v1, v0, v5

    sput-object v0, Labcd/Fz;->v5:[Labcd/Fz;

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

.method public static valueOf(Ljava/lang/String;)Labcd/Fz;
    .registers 2

    const-class v0, Labcd/Fz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/Fz;

    return-object v0
.end method

.method public static values()[Labcd/Fz;
    .registers 1

    sget-object v0, Labcd/Fz;->v5:[Labcd/Fz;

    invoke-virtual {v0}, [Labcd/Fz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/Fz;

    return-object v0
.end method
