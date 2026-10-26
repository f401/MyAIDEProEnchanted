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
    .locals 2

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
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 72
    :goto_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->literalNames:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 73
    :goto_1
    iput-object p2, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->symbolicNames:[Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 74
    :goto_2
    iput-object p3, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->displayNames:[Ljava/lang/String;

    .line 76
    array-length v0, p3

    array-length v1, p1

    array-length v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->maxTokenType:I

    return-void

    .line 72
    :cond_0
    sget-object p1, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_NAMES:[Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    sget-object p2, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_NAMES:[Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_2
    sget-object p3, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_NAMES:[Ljava/lang/String;

    goto :goto_2
.end method

.method public static fromTokenNames([Ljava/lang/String;)Lorg/antlr/v4/runtime/Vocabulary;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    .line 96
    array-length v0, p0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    sget-object v0, Lorg/antlr/v4/runtime/VocabularyImpl;->EMPTY_VOCABULARY:Lorg/antlr/v4/runtime/VocabularyImpl;

    .line 125
    :goto_0
    return-object v0

    .line 100
    :cond_1
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 101
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move v2, v3

    .line 102
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_5

    .line 103
    aget-object v4, p0, v2

    if-nez v4, :cond_2

    .line 122
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 109
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_3

    .line 111
    aput-object v6, v1, v2

    goto :goto_2

    .line 114
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    aput-object v6, v0, v2

    goto :goto_2

    .line 121
    :cond_4
    aput-object v6, v0, v2

    .line 122
    aput-object v6, v1, v2

    goto :goto_2

    .line 125
    :cond_5
    new-instance v2, Lorg/antlr/v4/runtime/VocabularyImpl;

    invoke-direct {v2, v0, v1, p0}, Lorg/antlr/v4/runtime/VocabularyImpl;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    .line 157
    iget-object v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->displayNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 158
    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 164
    :cond_1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/VocabularyImpl;->getLiteralName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/VocabularyImpl;->getSymbolicName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLiteralName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 135
    iget-object v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->literalNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 136
    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxTokenType()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->maxTokenType:I

    return v0
.end method

.method public getSymbolicName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    .line 144
    iget-object v0, p0, Lorg/antlr/v4/runtime/VocabularyImpl;->symbolicNames:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 145
    aget-object v0, v0, p1

    .line 149
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 149
    const-string v0, "EOF"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
