.class public final enum Landroidj/support/v4/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidj/support/v4/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidj/support/v4/content/ModernAsyncTask$Status;

.field public static final enum FINISHED:Landroidj/support/v4/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Landroidj/support/v4/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Landroidj/support/v4/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroidj/support/v4/content/ModernAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Landroidj/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidj/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroidj/support/v4/content/ModernAsyncTask$Status;

    new-instance v0, Landroidj/support/v4/content/ModernAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Landroidj/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidj/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroidj/support/v4/content/ModernAsyncTask$Status;

    new-instance v0, Landroidj/support/v4/content/ModernAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Landroidj/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidj/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroidj/support/v4/content/ModernAsyncTask$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Landroidj/support/v4/content/ModernAsyncTask$Status;

    sget-object v1, Landroidj/support/v4/content/ModernAsyncTask$Status;->PENDING:Landroidj/support/v4/content/ModernAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Landroidj/support/v4/content/ModernAsyncTask$Status;->RUNNING:Landroidj/support/v4/content/ModernAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Landroidj/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroidj/support/v4/content/ModernAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Landroidj/support/v4/content/ModernAsyncTask$Status;->$VALUES:[Landroidj/support/v4/content/ModernAsyncTask$Status;

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

.method public static valueOf(Ljava/lang/String;)Landroidj/support/v4/content/ModernAsyncTask$Status;
    .registers 2

    const-class v0, Landroidj/support/v4/content/ModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/content/ModernAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Landroidj/support/v4/content/ModernAsyncTask$Status;
    .registers 1

    sget-object v0, Landroidj/support/v4/content/ModernAsyncTask$Status;->$VALUES:[Landroidj/support/v4/content/ModernAsyncTask$Status;

    invoke-virtual {v0}, [Landroidj/support/v4/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidj/support/v4/content/ModernAsyncTask$Status;

    return-object v0
.end method
