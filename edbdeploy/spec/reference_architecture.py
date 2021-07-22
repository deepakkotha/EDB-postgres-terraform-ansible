ReferenceArchitectureSpec = {
    'EDB-RA-1': {
        'pg_count': 1,
        'pem_server': True,
        'barman': True,
        'barman_server_count': 1,
        'bdr_server_count': 0,
        'bdr_witness_count': 0,
        'pooler_count': 0,
        'pooler_type': None,
        'pooler_local': False,
        'efm': False,
        'replication_type': None,
        'hammerdb': False,
        'hammerdb_server': False
    },
    'EDB-RA-2': {
        'pg_count': 3,
        'pem_server': True,
        'barman': True,
        'barman_server_count': 1,
        'bdr_server_count': 0,
        'bdr_witness_count': 0,
        'pooler_count': 0,
        'pooler_type': None,
        'pooler_local': False,
        'efm': True,
        'replication_type': "synchronous",
        'hammerdb': False,
        'hammerdb_server': False
    },
    'EDB-RA-3': {
        'pg_count': 3,
        'pem_server': True,
        'barman': True,
        'barman_server_count': 1,
        'bdr_server_count': 1,
        'bdr_witness_count': 0,
        'pooler_count': 3,
        'pooler_type': "pgpool2",
        'pooler_local': False,
        'efm': True,
        'replication_type': "synchronous",
        'hammerdb': False,
        'hammerdb_server': False
    },
    'HammerDB-DBaaS': {
        'pg_count': 0,
        'pem_server': False,
        'barman': False,
        'barman_server_count': 0,
        'bdr_server_count': 0,
        'bdr_witness_count': 0,
        'pooler_count': 0,
        'pooler_type': None,
        'pooler_local': False,
        'efm': False,
        'replication_type': None,
        'hammerdb': False,
        'hammerdb_server': True
    },
    'HammerDB-TPROC-C': {
        'pg_count': 1,
        'pem_server': False,
        'barman': False,
        'barman_server_count': 0,
        'bdr_server_count': 0,
        'bdr_witness_count': 0,
        'pooler_count': 0,
        'pooler_type': None,
        'pooler_local': False,
        'efm': False,
        'replication_type': None,
        'hammerdb': True,
        'hammerdb_server': True
    },
    'EDB-RA': {
        'pg_count': 3,
        'pem_server': True,
        'barman': True,
        'barman_server_count': 1,
        'bdr_server_count': 0,
        'bdr_witness_count': 0,
        'pooler_count': 0,
        'pooler_type': None,
        'pooler_local': False,
        'efm': True,
        'replication_type': "synchronous",
        'hammerdb': False,
        'hammerdb_server': False
    },
    'EDB-Always-On': {
        'pg_count': 0,
        'pem_server': True,
        'barman': True,
        'barman_server_count': 2,
        'bdr_server_count': 6,
        'bdr_witness_count': 1,
        'pooler_count': 4,
        'pooler_type': "pgbouncer",
        'pooler_local': False,
        'efm': True,
        'replication_type': "synchronous",
        'hammerdb': False,
        'hammerdb_server': False
    }
}
