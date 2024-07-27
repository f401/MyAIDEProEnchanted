.class public enum Lcom/s1243808733/android/dx/merge/CollisionPolicy;
.super Ljava/lang/Enum;
.source "CollisionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dx/merge/CollisionPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dx/merge/CollisionPolicy;

.field public static final FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

.field public static final KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;


# direct methods
.method static final constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const-string v1, "KEEP_FIRST"

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/merge/CollisionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    new-instance v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/merge/CollisionPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    sget-object v1, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->KEEP_FIRST:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->FAIL:Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->$VALUES:[Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/merge/CollisionPolicy;
    .registers 5

    .line 34
    sget-object v1, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->$VALUES:[Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dx/merge/CollisionPolicy;
    .registers 1

    .line 34
    sget-object v0, Lcom/s1243808733/android/dx/merge/CollisionPolicy;->$VALUES:[Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/merge/CollisionPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/merge/CollisionPolicy;

    return-object v0
.end method
