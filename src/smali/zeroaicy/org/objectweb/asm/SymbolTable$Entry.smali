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

    .line 1318
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v7, p3

    invoke-direct/range {v1 .. v8}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1319
    iput p5, p0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;I)V
    .registers 14

    .line 1302
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    int-to-long v7, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1303
    iput p4, p0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;JI)V
    .registers 16

    .line 1307
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v1 .. v8}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1308
    iput p6, p0, Lzeroaicy/org/objectweb/asm/SymbolTable$Entry;->hashCode:I

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .line 1313
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v0, 0x0

    int-to-long v7, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v8}, Lzeroaicy/org/objectweb/asm/Symbol;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

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
