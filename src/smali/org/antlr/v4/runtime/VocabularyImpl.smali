.class public Lorg/antlr/v4/runtime/VocabularyImpl;
.super Ljava/lang/Object;
.source "VocabularyImpl.java"

# interfaces
.implements Lorg/antlr/v4/runtime/Vocabulary;


# static fields
.field private static final EMPTY_NAMES:[Ljava/lang/String;

.field public static final EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;


# instance fields
.field private final displayNames:[Ljava/lang/String;

.field private final literalNames:[Ljava/lang/String;

.field private final maxTokenType:I

.field private final symbolicNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_NAMES:[Ljava/lang/String;

    .line 27
    new-instance v1, Lorg/antlr/v4/runtime/VocabularyImpl;

    invoke-direct {v1, v0, v0, v0}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 72
    :cond_6
    sget-object p1, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_NAMES:[Ljava/lang/String;

    :goto_8
    iput-object p1, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->literalNames:[Ljava/lang/String;

    if-eqz p2, :cond_d

    goto :goto_f

    .line 73
    :cond_d
    sget-object p2, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_NAMES:[Ljava/lang/String;

    :goto_f
    iput-object p2, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->symbolicNames:[Ljava/lang/String;

    if-eqz p3, :cond_14

    goto :goto_16

    .line 74
    :cond_14
    sget-object p3, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_NAMES:[Ljava/lang/String;

    :goto_16
    iput-object p3, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->displayNames:[Ljava/lang/String;

    .line 76
    array-length p3, p3

    array-length p1, p1

    array-length p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->maxTokenType:I

    return-void
.end method

.method public static fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;
    .registers 8

    if-eqz p0, :cond_46

    .line 96
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_46

    .line 100
    :cond_6
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 101
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 102
    :goto_16
    array-length v4, p0

    if-ge v3, v4, :cond_40

    .line 103
    aget-object v4, p0, v3

    if-nez v4, :cond_1e

    goto :goto_3d

    .line 108
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_39

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_30

    .line 111
    aput-object v6, v1, v3

    goto :goto_3d

    .line 114
    :cond_30
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 115
    aput-object v6, v0, v3

    goto :goto_3d

    .line 121
    :cond_39
    aput-object v6, v0, v3

    .line 122
    aput-object v6, v1, v3

    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 125
    :cond_40
    new-instance v2, Lorg/antlr/v4/runtime/VocabularyImpl;

    invoke-direct {v2, v0, v1, p0}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2

    .line 97
    :cond_46
    :goto_46
    sget-object p0, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;

    return-object p0
.end method


# virtual methods
.method public getDisplayName(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_c

    .line 157
    iget-object v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->displayNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_c

    .line 158
    aget-object v0, v0, p1

    if-eqz v0, :cond_c

    return-object v0

    .line 164
    :cond_c
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/VocabularyImpl;->getLiteralName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    return-object v0

    .line 169
    :cond_13
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/VocabularyImpl;->getSymbolicName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    return-object v0

    .line 174
    :cond_1a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLiteralName(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_a

    .line 135
    iget-object v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->literalNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_a

    .line 136
    aget-object p1, v0, p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxTokenType()I
    .registers 2

    .line 130
    iget v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->maxTokenType:I

    return v0
.end method

.method public getSymbolicName(I)Ljava/lang/String;
    .registers 4

    if-ltz p1, :cond_a

    .line 144
    iget-object v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->symbolicNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_a

    .line 145
    aget-object p1, v0, p1

    return-object p1

    :cond_a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    .line 149
    const-string p1, "EOF"

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method
