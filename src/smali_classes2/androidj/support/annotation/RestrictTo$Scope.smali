.class public final enum Landroidj/support/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidj/support/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidj/support/annotation/RestrictTo$Scope;

.field public static final enum GROUP_ID:Landroidj/support/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LIBRARY:Landroidj/support/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;

.field public static final enum SUBCLASSES:Landroidj/support/annotation/RestrictTo$Scope;

.field public static final enum TESTS:Landroidj/support/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroidj/support/annotation/RestrictTo$Scope;

    const-string v1, "LIBRARY"

    invoke-direct {v0, v1, v2}, Landroidj/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY:Landroidj/support/annotation/RestrictTo$Scope;

    new-instance v0, Landroidj/support/annotation/RestrictTo$Scope;

    const-string v1, "LIBRARY_GROUP"

    invoke-direct {v0, v1, v3}, Landroidj/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;

    new-instance v0, Landroidj/support/annotation/RestrictTo$Scope;

    const-string v1, "GROUP_ID"

    invoke-direct {v0, v1, v4}, Landroidj/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidj/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroidj/support/annotation/RestrictTo$Scope;

    new-instance v0, Landroidj/support/annotation/RestrictTo$Scope;

    const-string v1, "TESTS"

    invoke-direct {v0, v1, v5}, Landroidj/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidj/support/annotation/RestrictTo$Scope;->TESTS:Landroidj/support/annotation/RestrictTo$Scope;

    new-instance v0, Landroidj/support/annotation/RestrictTo$Scope;

    const-string v1, "SUBCLASSES"

    invoke-direct {v0, v1, v6}, Landroidj/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidj/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroidj/support/annotation/RestrictTo$Scope;

    const/4 v0, 0x5

    new-array v0, v0, [Landroidj/support/annotation/RestrictTo$Scope;

    sget-object v1, Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY:Landroidj/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v2

    sget-object v1, Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v3

    sget-object v1, Landroidj/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroidj/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v4

    sget-object v1, Landroidj/support/annotation/RestrictTo$Scope;->TESTS:Landroidj/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v5

    sget-object v1, Landroidj/support/annotation/RestrictTo$Scope;->SUBCLASSES:Landroidj/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v6

    sput-object v0, Landroidj/support/annotation/RestrictTo$Scope;->$VALUES:[Landroidj/support/annotation/RestrictTo$Scope;

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

.method public static valueOf(Ljava/lang/String;)Landroidj/support/annotation/RestrictTo$Scope;
    .registers 2

    const-class v0, Landroidj/support/annotation/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidj/support/annotation/RestrictTo$Scope;

    return-object v0
.end method

.method public static values()[Landroidj/support/annotation/RestrictTo$Scope;
    .registers 1

    sget-object v0, Landroidj/support/annotation/RestrictTo$Scope;->$VALUES:[Landroidj/support/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, [Landroidj/support/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidj/support/annotation/RestrictTo$Scope;

    return-object v0
.end method
