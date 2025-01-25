.class public Lsun/misc/RegexpPool;
.super Ljava/lang/Object;
.source "RegexpPool.java"


# static fields
.field private static final BIG:I = 0x7fffffff


# instance fields
.field private lastDepth:I

.field private prefixMachine:Lsun/misc/RegexpNode;

.field private suffixMachine:Lsun/misc/RegexpNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lsun/misc/RegexpNode;

    invoke-direct {v0}, Lsun/misc/RegexpNode;-><init>()V

    iput-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 40
    new-instance v0, Lsun/misc/RegexpNode;

    invoke-direct {v0}, Lsun/misc/RegexpNode;-><init>()V

    iput-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 42
    const v0, 0x7fffffff

    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 45
    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/REException;
        }
    .end annotation

    const/16 v4, 0x2a

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1d

    .line 169
    iget-object v1, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 170
    :goto_10
    if-le v2, v0, :cond_5c

    .line 171
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lsun/misc/RegexpNode;->add(C)Lsun/misc/RegexpNode;

    move-result-object v1

    goto :goto_10

    .line 174
    :cond_1d
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_28

    .line 175
    add-int/lit8 v2, v2, -0x1

    move v0, v1

    .line 178
    :cond_28
    iget-object v3, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 179
    :goto_2a
    if-ge v1, v2, :cond_37

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lsun/misc/RegexpNode;->add(C)Lsun/misc/RegexpNode;

    move-result-object v3

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 181
    :cond_37
    iput-boolean v0, v3, Lsun/misc/RegexpNode;->exact:Z

    move-object v0, v3

    .line 184
    :goto_3a
    iget-object v1, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v1, :cond_40

    if-eqz p3, :cond_45

    .line 187
    :cond_40
    iput-object p1, v0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    .line 188
    iput-object p2, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 189
    return-void

    .line 185
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is a duplicate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lsun/misc/REException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsun/misc/REException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    move-object v0, v1

    goto :goto_3a
.end method

.method private matchAfter(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 11

    const/4 v4, 0x0

    .line 192
    iget-object v7, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 198
    if-gtz v6, :cond_b

    .line 199
    const/4 v0, 0x0

    .line 227
    :cond_a
    :goto_a
    return-object v0

    :cond_b
    move-object v0, v7

    move-object v3, v7

    move v2, v4

    move v1, v4

    move v5, v4

    .line 201
    :goto_10
    if-eqz v3, :cond_29

    .line 202
    iget-object v7, v3, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v7, :cond_27

    iget v7, v3, Lsun/misc/RegexpNode;->depth:I

    if-ge v7, p2, :cond_27

    iget-boolean v7, v3, Lsun/misc/RegexpNode;->exact:Z

    if-eqz v7, :cond_20

    if-ne v5, v6, :cond_27

    .line 204
    :cond_20
    iget v0, v3, Lsun/misc/RegexpNode;->depth:I

    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    move-object v0, v3

    move v1, v6

    move v2, v5

    .line 209
    :cond_27
    if-lt v5, v6, :cond_4d

    .line 214
    :cond_29
    iget-object v3, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    move v5, v1

    .line 215
    :goto_2c
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_58

    if-eqz v3, :cond_58

    .line 216
    iget-object v1, v3, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v1, :cond_6b

    iget v1, v3, Lsun/misc/RegexpNode;->depth:I

    if-ge v1, p2, :cond_6b

    .line 217
    iget v0, v3, Lsun/misc/RegexpNode;->depth:I

    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 220
    add-int/lit8 v2, v6, 0x1

    move-object v0, v3

    move v1, v4

    move v5, v2

    .line 222
    :goto_43
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v3

    move v2, v1

    goto :goto_2c

    .line 211
    :cond_4d
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v3

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 224
    :cond_58
    iget-object v0, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 225
    if-eqz v0, :cond_a

    instance-of v1, v0, Lsun/misc/RegexpTarget;

    if-eqz v1, :cond_a

    .line 226
    check-cast v0, Lsun/misc/RegexpTarget;

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lsun/misc/RegexpTarget;->found(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a

    :cond_6b
    move v1, v2

    goto :goto_43
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/misc/REException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 60
    return-void
.end method

.method public delete(Ljava/lang/String;)Ljava/lang/Object;
    .registers 11

    const v8, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 89
    .line 90
    iget-object v6, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 94
    const/4 v2, 0x1

    .line 96
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 97
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 98
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    .line 100
    :cond_20
    if-gtz v5, :cond_23

    .line 137
    :goto_22
    return-object v4

    :cond_23
    move-object v0, v6

    move-object v1, v6

    move v7, v3

    .line 104
    :goto_26
    if-eqz v1, :cond_39

    .line 105
    iget-object v6, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v6, :cond_37

    iget v6, v1, Lsun/misc/RegexpNode;->depth:I

    if-ge v6, v8, :cond_37

    iget-boolean v6, v1, Lsun/misc/RegexpNode;->exact:Z

    if-eqz v6, :cond_36

    if-ne v7, v5, :cond_37

    :cond_36
    move-object v0, v1

    .line 109
    :cond_37
    if-lt v7, v5, :cond_54

    .line 115
    :cond_39
    iget-object v1, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    .line 116
    :goto_3b
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_60

    if-eqz v1, :cond_60

    .line 117
    iget-object v6, v1, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4b

    iget v6, v1, Lsun/misc/RegexpNode;->depth:I

    if-ge v6, v8, :cond_4b

    move-object v0, v1

    move v2, v3

    .line 121
    :cond_4b
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v1

    goto :goto_3b

    .line 111
    :cond_54
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Lsun/misc/RegexpNode;->find(C)Lsun/misc/RegexpNode;

    move-result-object v1

    .line 104
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_26

    .line 125
    :cond_60
    if-eqz v2, :cond_71

    .line 126
    iget-object v1, v0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 127
    iget-object v1, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 128
    iput-object v4, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    move-object v0, v1

    :goto_6f
    move-object v4, v0

    .line 137
    goto :goto_22

    .line 132
    :cond_71
    iget-object v1, v0, Lsun/misc/RegexpNode;->re:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 133
    iget-object v1, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    .line 134
    iput-object v4, v0, Lsun/misc/RegexpNode;->result:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_6f

    :cond_7f
    move-object v0, v4

    goto :goto_6f
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 154
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lsun/misc/RegexpPool;->matchAfter(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public matchNext(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 162
    iget v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    invoke-direct {p0, p1, v0}, Lsun/misc/RegexpPool;->matchAfter(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .registers 3

    .line 245
    const-string v0, "Regexp pool:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v0, :cond_1c

    .line 247
    const-string v0, " Suffix machine: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lsun/misc/RegexpPool;->suffixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 249
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 251
    :cond_1c
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    if-eqz v0, :cond_33

    .line 252
    const-string v0, " Prefix machine: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lsun/misc/RegexpPool;->prefixMachine:Lsun/misc/RegexpNode;

    iget-object v0, v0, Lsun/misc/RegexpNode;->firstchild:Lsun/misc/RegexpNode;

    invoke-virtual {v0, p1}, Lsun/misc/RegexpNode;->print(Ljava/io/PrintStream;)V

    .line 254
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    :cond_33
    return-void
.end method

.method public replace(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 76
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v0}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    .line 80
    :goto_4
    return-void

    .line 77
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public reset()V
    .registers 2

    .line 240
    const v0, 0x7fffffff

    iput v0, p0, Lsun/misc/RegexpPool;->lastDepth:I

    .line 241
    return-void
.end method
