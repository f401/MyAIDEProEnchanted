.class public final enum Labcd/Zw$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Zw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/Zw$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/Zw$a;

.field public static final enum FH:Labcd/Zw$a;

.field private static final Hw:[Labcd/Zw$a;

.field public static final enum j6:Labcd/Zw$a;


# instance fields
.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Labcd/Zw$a;

    const-string v1, "dropbox"

    const-string v2, "DROPBOX"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Labcd/Zw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/Zw$a;->j6:Labcd/Zw$a;

    new-instance v1, Labcd/Zw$a;

    const-string v2, "sandbox"

    const-string v4, "APP_FOLDER"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Labcd/Zw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Labcd/Zw$a;->DW:Labcd/Zw$a;

    new-instance v2, Labcd/Zw$a;

    const-string v4, "auto"

    const-string v6, "AUTO"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Labcd/Zw$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Labcd/Zw$a;->FH:Labcd/Zw$a;

    const/4 v4, 0x3

    new-array v4, v4, [Labcd/Zw$a;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Labcd/Zw$a;->Hw:[Labcd/Zw$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/Zw$a;->v5:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/Zw$a;
    .registers 2

    const-class v0, Labcd/Zw$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/Zw$a;

    return-object p0
.end method

.method public static values()[Labcd/Zw$a;
    .registers 1

    sget-object v0, Labcd/Zw$a;->Hw:[Labcd/Zw$a;

    invoke-virtual {v0}, [Labcd/Zw$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/Zw$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Zw$a;->v5:Ljava/lang/String;

    return-object v0
.end method
