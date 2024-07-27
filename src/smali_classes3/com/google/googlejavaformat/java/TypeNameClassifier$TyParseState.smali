.class abstract enum Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
.super Ljava/lang/Enum;
.source "TypeNameClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/TypeNameClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "TyParseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum AMBIGUOUS:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum FIRST_STATIC_MEMBER:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum REJECT:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum START:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

.field public static final enum TYPE:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;


# instance fields
.field private final isSingleUnit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$1;

    const-string v1, "START"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$1;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->START:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    .line 87
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$2;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$2;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->TYPE:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    .line 105
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$3;

    const-string v1, "FIRST_STATIC_MEMBER"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->FIRST_STATIC_MEMBER:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    .line 115
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$4;

    const-string v1, "REJECT"

    invoke-direct {v0, v1, v6, v3}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$4;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    .line 125
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$5;

    const-string v1, "AMBIGUOUS"

    invoke-direct {v0, v1, v7, v3}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState$5;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->AMBIGUOUS:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    .line 59
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    sget-object v2, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->START:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->TYPE:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->FIRST_STATIC_MEMBER:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->REJECT:Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->$VALUES:[Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput-boolean p3, p0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->isSingleUnit:Z

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLcom/google/googlejavaformat/java/TypeNameClassifier$1;)V
    .registers 5

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .registers 2

    .line 59
    const-class v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
    .registers 1

    .line 59
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->$VALUES:[Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;

    return-object v0
.end method


# virtual methods
.method public isSingleUnit()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;->isSingleUnit:Z

    return v0
.end method

.method public abstract next(Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;)Lcom/google/googlejavaformat/java/TypeNameClassifier$TyParseState;
.end method
