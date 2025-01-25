.class public Lorg/xutils/db/sqlite/WhereBuilder;
.super Ljava/lang/Object;
.source "WhereBuilder.java"


# instance fields
.field private final whereItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    .line 38
    return-void
.end method

.method private appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    iget-object v3, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 123
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 128
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_22
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, "!="

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 136
    const-string p3, "<>"

    .line 142
    :cond_39
    :goto_39
    if-nez p4, :cond_79

    .line 143
    const-string v0, "="

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 144
    const-string v0, " IS NULL"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_48
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void

    .line 137
    :cond_52
    const-string v3, "=="

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 138
    const-string p3, "="

    goto :goto_39

    .line 145
    :cond_5d
    const-string v0, "<>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 146
    const-string v0, " IS NOT NULL"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 148
    :cond_6b
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " NULL"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 151
    :cond_79
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v3, "IN"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 155
    instance-of v3, p4, Ljava/lang/Iterable;

    if-eqz v3, :cond_cc

    .line 156
    check-cast p4, Ljava/lang/Iterable;

    .line 163
    :goto_94
    if-eqz p4, :cond_10d

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 168
    invoke-static {v3}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 169
    invoke-static {v3}, Lorg/xutils/db/table/ColumnUtils;->isTextColumnDbType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 170
    invoke-static {v3}, Lorg/xutils/db/table/ColumnUtils;->convert2SafeExpr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 171
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :goto_c6
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a1

    .line 157
    :cond_cc
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1e3

    .line 158
    invoke-static {p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    :goto_df
    if-ge v1, v3, :cond_1e0

    .line 161
    invoke-static {p4, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    .line 173
    :cond_eb
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_c6

    .line 177
    :cond_ef
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_ff

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 180
    :cond_ff
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 183
    :cond_10d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must be an Array or an Iterable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_115
    const-string v3, "BETWEEN"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 187
    instance-of v3, p4, Ljava/lang/Iterable;

    if-eqz v3, :cond_174

    .line 188
    check-cast p4, Ljava/lang/Iterable;

    .line 195
    :goto_123
    if-eqz p4, :cond_1b0

    .line 198
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a8

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a0

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 206
    invoke-static {v1}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    invoke-static {v0}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    invoke-static {v1}, Lorg/xutils/db/table/ColumnUtils;->isTextColumnDbType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 210
    invoke-static {v1}, Lorg/xutils/db/table/ColumnUtils;->convert2SafeExpr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v0}, Lorg/xutils/db/table/ColumnUtils;->convert2SafeExpr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, " AND "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 189
    :cond_174
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1dd

    .line 190
    invoke-static {p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    :goto_187
    if-ge v1, v3, :cond_1da

    .line 193
    invoke-static {p4, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_187

    .line 216
    :cond_193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, " AND "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 203
    :cond_1a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must contains tow items."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must contains tow items."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must be an Array or an Iterable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1b8
    invoke-static {p4}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lorg/xutils/db/table/ColumnUtils;->isTextColumnDbType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d5

    .line 226
    invoke-static {v0}, Lorg/xutils/db/table/ColumnUtils;->convert2SafeExpr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    .line 229
    :cond_1d5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :cond_1da
    move-object p4, v0

    goto/16 :goto_123

    :cond_1dd
    move-object p4, v0

    goto/16 :goto_123

    :cond_1e0
    move-object p4, v0

    goto/16 :goto_94

    :cond_1e3
    move-object p4, v0

    goto/16 :goto_94
.end method

.method public static b()Lorg/xutils/db/sqlite/WhereBuilder;
    .registers 1

    .line 44
    new-instance v0, Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-direct {v0}, Lorg/xutils/db/sqlite/WhereBuilder;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;
    .registers 5

    .line 53
    new-instance v0, Lorg/xutils/db/sqlite/WhereBuilder;

    invoke-direct {v0}, Lorg/xutils/db/sqlite/WhereBuilder;-><init>()V

    .line 54
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;
    .registers 5

    .line 64
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-object p0

    .line 64
    :cond_d
    const-string v0, "AND"

    goto :goto_9
.end method

.method public and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;
    .registers 4

    .line 74
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, " "

    .line 75
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/sqlite/WhereBuilder;->expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    return-object v0

    .line 74
    :cond_2c
    const-string v0, "AND "

    goto :goto_a
.end method

.method public expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;
    .registers 5

    .line 99
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object p0
.end method

.method public getWhereItemSize()I
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;
    .registers 5

    .line 84
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-object p0

    .line 84
    :cond_d
    const-string v0, "OR"

    goto :goto_9
.end method

.method public or(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;
    .registers 4

    .line 94
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, " "

    .line 95
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xutils/db/sqlite/WhereBuilder;->expr(Ljava/lang/String;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    return-object v0

    .line 94
    :cond_2c
    const-string v0, "OR "

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 109
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 110
    const-string v0, ""

    .line 116
    :goto_a
    return-object v0

    .line 112
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget-object v0, p0, Lorg/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 116
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
