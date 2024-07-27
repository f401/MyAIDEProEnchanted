.class public final enum Landroid/arch/lifecycle/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/arch/lifecycle/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Landroid/arch/lifecycle/a$b;

.field public static final enum FH:Landroid/arch/lifecycle/a$b;

.field public static final enum Hw:Landroid/arch/lifecycle/a$b;

.field private static final Zo:[Landroid/arch/lifecycle/a$b;

.field public static final enum j6:Landroid/arch/lifecycle/a$b;

.field public static final enum v5:Landroid/arch/lifecycle/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/arch/lifecycle/a$b;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v2}, Landroid/arch/lifecycle/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$b;->j6:Landroid/arch/lifecycle/a$b;

    new-instance v0, Landroid/arch/lifecycle/a$b;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v3}, Landroid/arch/lifecycle/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$b;->DW:Landroid/arch/lifecycle/a$b;

    new-instance v0, Landroid/arch/lifecycle/a$b;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v4}, Landroid/arch/lifecycle/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$b;->FH:Landroid/arch/lifecycle/a$b;

    new-instance v0, Landroid/arch/lifecycle/a$b;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v5}, Landroid/arch/lifecycle/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$b;->Hw:Landroid/arch/lifecycle/a$b;

    new-instance v0, Landroid/arch/lifecycle/a$b;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v6}, Landroid/arch/lifecycle/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/a$b;->v5:Landroid/arch/lifecycle/a$b;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/arch/lifecycle/a$b;

    sget-object v1, Landroid/arch/lifecycle/a$b;->j6:Landroid/arch/lifecycle/a$b;

    aput-object v1, v0, v2

    sget-object v1, Landroid/arch/lifecycle/a$b;->DW:Landroid/arch/lifecycle/a$b;

    aput-object v1, v0, v3

    sget-object v1, Landroid/arch/lifecycle/a$b;->FH:Landroid/arch/lifecycle/a$b;

    aput-object v1, v0, v4

    sget-object v1, Landroid/arch/lifecycle/a$b;->Hw:Landroid/arch/lifecycle/a$b;

    aput-object v1, v0, v5

    sget-object v1, Landroid/arch/lifecycle/a$b;->v5:Landroid/arch/lifecycle/a$b;

    aput-object v1, v0, v6

    sput-object v0, Landroid/arch/lifecycle/a$b;->Zo:[Landroid/arch/lifecycle/a$b;

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

.method public static valueOf(Ljava/lang/String;)Landroid/arch/lifecycle/a$b;
    .registers 2

    const-class v0, Landroid/arch/lifecycle/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/a$b;

    return-object v0
.end method

.method public static values()[Landroid/arch/lifecycle/a$b;
    .registers 1

    sget-object v0, Landroid/arch/lifecycle/a$b;->Zo:[Landroid/arch/lifecycle/a$b;

    invoke-virtual {v0}, [Landroid/arch/lifecycle/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/arch/lifecycle/a$b;

    return-object v0
.end method
