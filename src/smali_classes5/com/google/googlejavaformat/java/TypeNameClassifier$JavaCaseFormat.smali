.class public final enum Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
.super Ljava/lang/Enum;
.source "TypeNameClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/TypeNameClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JavaCaseFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

.field public static final enum LOWERCASE:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

.field public static final enum LOWER_CAMEL:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

.field public static final enum UPPERCASE:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

.field public static final enum UPPER_CAMEL:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    const-string v1, "UPPERCASE"

    invoke-direct {v0, v1, v3}, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPERCASE:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    .line 162
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    const-string v1, "LOWERCASE"

    invoke-direct {v0, v1, v4}, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWERCASE:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    .line 163
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    const-string v1, "UPPER_CAMEL"

    invoke-direct {v0, v1, v5}, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPER_CAMEL:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    .line 164
    new-instance v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    const-string v1, "LOWER_CAMEL"

    invoke-direct {v0, v1, v6}, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWER_CAMEL:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    .line 160
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    sget-object v2, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPERCASE:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWERCASE:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPER_CAMEL:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->$VALUES:[Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static from(Ljava/lang/String;)Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
    .registers 9

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Verify;->verify(Z)V

    .line 174
    const/4 v5, 0x1

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 175
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_34

    .line 176
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 177
    invoke-static {v6}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v7

    if-nez v7, :cond_22

    .line 175
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 180
    :cond_22
    if-eqz v5, :cond_29

    .line 181
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    move v5, v1

    .line 184
    :cond_29
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    or-int/2addr v2, v7

    .line 185
    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    or-int/2addr v3, v6

    goto :goto_1f

    .line 187
    :cond_34
    if-eqz v0, :cond_3e

    .line 188
    if-eqz v3, :cond_3b

    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPER_CAMEL:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    .line 190
    :goto_3a
    return-object v0

    .line 188
    :cond_3b
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->UPPERCASE:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    goto :goto_3a

    .line 190
    :cond_3e
    if-eqz v2, :cond_43

    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWER_CAMEL:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    goto :goto_3a

    :cond_43
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->LOWERCASE:Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    goto :goto_3a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
    .registers 2

    .line 160
    const-class v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;
    .registers 1

    .line 160
    sget-object v0, Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->$VALUES:[Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    invoke-virtual {v0}, [Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlejavaformat/java/TypeNameClassifier$JavaCaseFormat;

    return-object v0
.end method
