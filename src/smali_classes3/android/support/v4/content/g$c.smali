.class public final enum Landroid/support/v4/content/g$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/content/g$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Landroid/support/v4/content/g$c;

.field public static final enum FH:Landroid/support/v4/content/g$c;

.field private static final Hw:[Landroid/support/v4/content/g$c;

.field public static final enum j6:Landroid/support/v4/content/g$c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/support/v4/content/g$c;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/content/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/content/g$c;->j6:Landroid/support/v4/content/g$c;

    new-instance v1, Landroid/support/v4/content/g$c;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v4/content/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/content/g$c;->DW:Landroid/support/v4/content/g$c;

    new-instance v3, Landroid/support/v4/content/g$c;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/v4/content/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/v4/content/g$c;->FH:Landroid/support/v4/content/g$c;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/support/v4/content/g$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/support/v4/content/g$c;->Hw:[Landroid/support/v4/content/g$c;

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

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/content/g$c;
    .registers 2

    const-class v0, Landroid/support/v4/content/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/content/g$c;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/content/g$c;
    .registers 1

    sget-object v0, Landroid/support/v4/content/g$c;->Hw:[Landroid/support/v4/content/g$c;

    invoke-virtual {v0}, [Landroid/support/v4/content/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/content/g$c;

    return-object v0
.end method
