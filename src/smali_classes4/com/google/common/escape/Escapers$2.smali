.class final Lcom/google/common/escape/Escapers$2;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/escape/Escapers;->wrap(Lcom/google/common/escape/CharEscaper;)Lcom/google/common/escape/UnicodeEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$escaper:Lcom/google/common/escape/CharEscaper;


# direct methods
.method constructor <init>(Lcom/google/common/escape/CharEscaper;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected escape(I)[C
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_e

    .line 229
    iget-object v0, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v0

    .line 267
    :goto_d
    return-object v0

    .line 235
    :cond_e
    const/4 v0, 0x2

    new-array v5, v0, [C

    .line 236
    invoke-static {p1, v5, v2}, Ljava/lang/Character;->toChars(I[CI)I

    .line 237
    iget-object v0, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v3, v5, v2

    invoke-virtual {v0, v3}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v6

    .line 238
    iget-object v0, p0, Lcom/google/common/escape/Escapers$2;->val$escaper:Lcom/google/common/escape/CharEscaper;

    aget-char v3, v5, v1

    invoke-virtual {v0, v3}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v7

    .line 244
    if-nez v6, :cond_2a

    if-nez v7, :cond_2a

    .line 246
    const/4 v0, 0x0

    goto :goto_d

    .line 249
    :cond_2a
    if-eqz v6, :cond_41

    array-length v0, v6

    move v4, v0

    .line 250
    :goto_2e
    if-eqz v7, :cond_43

    array-length v0, v7

    .line 251
    :goto_31
    add-int/2addr v0, v4

    new-array v3, v0, [C

    .line 252
    if-eqz v6, :cond_45

    move v0, v2

    .line 254
    :goto_37
    array-length v8, v6

    if-ge v0, v8, :cond_49

    .line 255
    aget-char v8, v6, v0

    aput-char v8, v3, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_41
    move v4, v1

    .line 249
    goto :goto_2e

    :cond_43
    move v0, v1

    .line 250
    goto :goto_31

    .line 258
    :cond_45
    aget-char v0, v5, v2

    aput-char v0, v3, v2

    .line 260
    :cond_49
    if-eqz v7, :cond_57

    .line 261
    :goto_4b
    array-length v0, v7

    if-ge v2, v0, :cond_5b

    .line 262
    add-int v0, v4, v2

    aget-char v1, v7, v2

    aput-char v1, v3, v0

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 265
    :cond_57
    aget-char v0, v5, v1

    aput-char v0, v3, v4

    :cond_5b
    move-object v0, v3

    .line 267
    goto :goto_d
.end method
