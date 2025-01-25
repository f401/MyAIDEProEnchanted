.class final Lcom/google/common/base/CharMatcher$Whitespace;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Whitespace"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$Whitespace;

.field static final MULTIPLIER:I = 0x6449bf0a

.field static final SHIFT:I

.field static final TABLE:Ljava/lang/String; = "\u2002　\r\u0085\u200a\u2005\u2000　\u2029\u000b　\u2008\u2003\u205f　 \t \u2006\u2001\u202f\u00a0\f\u2009　\u2004　　\u2028\n\u2007　"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1217
    const-string v0, "\u2002　\r\u0085\u200a\u2005\u2000　\u2029\u000b　\u2008\u2003\u205f　 \t \u2006\u2001\u202f\u00a0\f\u2009　\u2004　　\u2028\n\u2007　"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcom/google/common/base/CharMatcher$Whitespace;->SHIFT:I

    .line 1219
    new-instance v0, Lcom/google/common/base/CharMatcher$Whitespace;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Whitespace;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$Whitespace;->INSTANCE:Lcom/google/common/base/CharMatcher$Whitespace;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1222
    const-string v0, "CharMatcher.whitespace()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    .line 1223
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 5

    .line 1227
    const-string v0, "\u2002　\r\u0085\u200a\u2005\u2000　\u2029\u000b　\u2008\u2003\u205f　 \t \u2006\u2001\u202f\u00a0\f\u2009　\u2004　　\u2028\n\u2007　"

    const v1, 0x6449bf0a

    mul-int/2addr v1, p1

    sget v2, Lcom/google/common/base/CharMatcher$Whitespace;->SHIFT:I

    ushr-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 4

    .line 1233
    const/4 v0, 0x0

    :goto_1
    const-string v1, "\u2002　\r\u0085\u200a\u2005\u2000　\u2029\u000b　\u2008\u2003\u205f　 \t \u2006\u2001\u202f\u00a0\f\u2009　\u2004　　\u2028\n\u2007　"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1234
    const-string v1, "\u2002　\r\u0085\u200a\u2005\u2000　\u2029\u000b　\u2008\u2003\u205f　 \t \u2006\u2001\u202f\u00a0\f\u2009　\u2004　　\u2028\n\u2007　"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 1233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1236
    :cond_15
    return-void
.end method
