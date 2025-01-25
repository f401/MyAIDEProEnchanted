.class public final enum Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;
.super Ljava/lang/Enum;
.source "AnnotationVisibility.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;",
        ">;",
        "Lcom/s1243808733/android/dx/util/ToHuman;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

.field public static final enum BUILD:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

.field public static final enum EMBEDDED:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

.field public static final enum RUNTIME:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

.field public static final enum SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;


# instance fields
.field private final human:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;
    .registers 3

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->EMBEDDED:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 25
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    const/4 v1, 0x0

    const-string v2, "runtime"

    const-string v3, "RUNTIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->RUNTIME:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 26
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    const/4 v1, 0x1

    const-string v2, "build"

    const-string v3, "BUILD"

    invoke-direct {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->BUILD:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 27
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    const/4 v1, 0x2

    const-string v2, "system"

    const-string v3, "SYSTEM"

    invoke-direct {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 28
    new-instance v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    const/4 v1, 0x3

    const-string v2, "embedded"

    const-string v3, "EMBEDDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->EMBEDDED:Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    .line 24
    invoke-static {}, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->$values()[Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->$VALUES:[Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->human:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;
    .registers 2

    .line 24
    const-class v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;
    .registers 1

    .line 24
    sget-object v0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->$VALUES:[Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;

    return-object v0
.end method


# virtual methods
.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/annotation/AnnotationVisibility;->human:Ljava/lang/String;

    return-object v0
.end method
