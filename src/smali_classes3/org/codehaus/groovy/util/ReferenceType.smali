.class public abstract enum Lorg/codehaus/groovy/util/ReferenceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/util/ReferenceType$HardRef;,
        Lorg/codehaus/groovy/util/ReferenceType$PhantomRef;,
        Lorg/codehaus/groovy/util/ReferenceType$SoftRef;,
        Lorg/codehaus/groovy/util/ReferenceType$WeakRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/codehaus/groovy/util/ReferenceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lorg/codehaus/groovy/util/ReferenceType;

.field public static final enum FH:Lorg/codehaus/groovy/util/ReferenceType;

.field public static final enum Hw:Lorg/codehaus/groovy/util/ReferenceType;

.field public static final enum j6:Lorg/codehaus/groovy/util/ReferenceType;

.field private static final v5:[Lorg/codehaus/groovy/util/ReferenceType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lorg/codehaus/groovy/util/ReferenceType$1;

    const-string v1, "SOFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codehaus/groovy/util/ReferenceType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codehaus/groovy/util/ReferenceType;->j6:Lorg/codehaus/groovy/util/ReferenceType;

    new-instance v1, Lorg/codehaus/groovy/util/ReferenceType$2;

    const-string v3, "WEAK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/codehaus/groovy/util/ReferenceType$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/codehaus/groovy/util/ReferenceType;->DW:Lorg/codehaus/groovy/util/ReferenceType;

    new-instance v3, Lorg/codehaus/groovy/util/ReferenceType$3;

    const-string v5, "PHANTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/codehaus/groovy/util/ReferenceType$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/codehaus/groovy/util/ReferenceType;->FH:Lorg/codehaus/groovy/util/ReferenceType;

    new-instance v5, Lorg/codehaus/groovy/util/ReferenceType$4;

    const-string v7, "HARD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/codehaus/groovy/util/ReferenceType$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/codehaus/groovy/util/ReferenceType;->Hw:Lorg/codehaus/groovy/util/ReferenceType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/codehaus/groovy/util/ReferenceType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/codehaus/groovy/util/ReferenceType;->v5:[Lorg/codehaus/groovy/util/ReferenceType;

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

.method synthetic constructor <init>(Ljava/lang/String;ILorg/codehaus/groovy/util/ReferenceType$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/codehaus/groovy/util/ReferenceType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/groovy/util/ReferenceType;
    .registers 2

    const-class v0, Lorg/codehaus/groovy/util/ReferenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/codehaus/groovy/util/ReferenceType;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/groovy/util/ReferenceType;
    .registers 1

    sget-object v0, Lorg/codehaus/groovy/util/ReferenceType;->v5:[Lorg/codehaus/groovy/util/ReferenceType;

    invoke-virtual {v0}, [Lorg/codehaus/groovy/util/ReferenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/groovy/util/ReferenceType;

    return-object v0
.end method


# virtual methods
.method protected abstract j6(Ljava/lang/Object;Lorg/codehaus/groovy/util/Finalizable;Ljava/lang/ref/ReferenceQueue;)Lorg/codehaus/groovy/util/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V::",
            "Lorg/codehaus/groovy/util/Finalizable;",
            ">(TT;TV;",
            "Ljava/lang/ref/ReferenceQueue;",
            ")",
            "Lorg/codehaus/groovy/util/Reference<",
            "TT;TV;>;"
        }
    .end annotation
.end method
