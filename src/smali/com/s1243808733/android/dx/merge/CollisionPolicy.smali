.class public final enum Lcom/s1243808733/android/dx/merge/CollisionPolicy;
.super Ljava/lang/Enum;
.source "CollisionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/merge/CollisionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/merge/CollisionPolicy;

.field public static final enum FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

.field public static final enum KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/merge/CollisionPolicy;
    .registers 3

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const-string v1, "KEEP_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/merge/CollisionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    .line 33
    new-instance v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const-string v1, "FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/merge/CollisionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    .line 22
    invoke-static {}, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->$values()[Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->$VALUES:[Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/merge/CollisionPolicy;
    .registers 2

    .line 22
    const-class v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/merge/CollisionPolicy;
    .registers 1

    .line 22
    sget-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->$VALUES:[Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/merge/CollisionPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-object v0
.end method
