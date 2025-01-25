.class public final enum Lcom/crashlytics/android/core/Ka$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/Ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/crashlytics/android/core/Ka$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/crashlytics/android/core/Ka$a;

.field private static final FH:[Lcom/crashlytics/android/core/Ka$a;

.field public static final enum j6:Lcom/crashlytics/android/core/Ka$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/crashlytics/android/core/Ka$a;

    const-string v1, "JAVA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/core/Ka$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crashlytics/android/core/Ka$a;->j6:Lcom/crashlytics/android/core/Ka$a;

    new-instance v1, Lcom/crashlytics/android/core/Ka$a;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/crashlytics/android/core/Ka$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/crashlytics/android/core/Ka$a;->DW:Lcom/crashlytics/android/core/Ka$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/crashlytics/android/core/Ka$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/crashlytics/android/core/Ka$a;->FH:[Lcom/crashlytics/android/core/Ka$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/crashlytics/android/core/Ka$a;
    .registers 2

    const-class v0, Lcom/crashlytics/android/core/Ka$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/crashlytics/android/core/Ka$a;

    return-object p0
.end method

.method public static values()[Lcom/crashlytics/android/core/Ka$a;
    .registers 1

    sget-object v0, Lcom/crashlytics/android/core/Ka$a;->FH:[Lcom/crashlytics/android/core/Ka$a;

    invoke-virtual {v0}, [Lcom/crashlytics/android/core/Ka$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crashlytics/android/core/Ka$a;

    return-object v0
.end method
