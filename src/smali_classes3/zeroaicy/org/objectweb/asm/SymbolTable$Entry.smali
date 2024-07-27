.class Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;
.super Lzeroaicy/org/objectweb/asm/Symbol;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzeroaicy/org/objectweb/asm/SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final hashCode:I

.field next:Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;


# direct methods
.method constructor <init>(IIJI)V
    .registers 15

    const/4 v0, 0x0

    .line 1318
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1319
    iput p5, p0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;I)V
    .registers 13

    const/4 v0, 0x0

    .line 1302
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x0

    int-to-long v6, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1303
    iput p4, p0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;JI)V
    .registers 15

    const/4 v0, 0x0

    .line 1307
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1308
    iput p6, p0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .line 1313
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x0

    int-to-long v6, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1314
    iput p5, p0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 9

    .line 1297
    invoke-direct/range {p0 .. p7}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1298
    iput p8, p0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    return-void
.end method
