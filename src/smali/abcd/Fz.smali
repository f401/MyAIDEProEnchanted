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
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Labcd/Fz;

    const-string v1, "GET"

    invoke-direct {v0, v1, v5}, Labcd/Fz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Fz;->j6:Labcd/Fz;

    new-instance v1, Labcd/Fz;

    const-string v2, "POST"

    invoke-direct {v1, v2, v6}, Labcd/Fz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/Fz;->DW:Labcd/Fz;

    new-instance v2, Labcd/Fz;

    const-string v3, "PUT"

    invoke-direct {v2, v3, v7}, Labcd/Fz;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/Fz;->FH:Labcd/Fz;

    new-instance v3, Labcd/Fz;

    const-string v4, "DELETE"

    invoke-direct {v3, v4, v8}, Labcd/Fz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/Fz;->Hw:Labcd/Fz;

    const/4 v4, 0x4

    new-array v4, v4, [Labcd/Fz;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Labcd/Fz;->v5:[Labcd/Fz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/Fz;
    .locals 1

    const-class v0, Labcd/Fz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/Fz;

    return-object v0
.end method

.method public static values()[Labcd/Fz;
    .locals 1

    sget-object v0, Labcd/Fz;->v5:[Labcd/Fz;

    invoke-virtual {v0}, [Labcd/Fz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/Fz;

    return-object v0
.end method
